.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xd480, %rsi
lea addresses_WT_ht+0x1147, %rdi
nop
nop
dec %rdx
mov $28, %rcx
rep movsb
nop
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xd300, %r12
clflush (%r12)
and $16010, %rbx
mov (%r12), %rcx
and $52990, %rcx
lea addresses_UC_ht+0x1d120, %rcx
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x3a80, %r14
nop
xor $2444, %rdx
movl $0x61626364, (%r14)
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0xec00, %rdx
clflush (%rdx)
nop
nop
nop
add $14168, %rbx
mov $0x6162636465666768, %r14
movq %r14, (%rdx)
nop
nop
nop
and $28447, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rcx

// Store
lea addresses_US+0x18b00, %r10
sub %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r10)
nop
and $30882, %r10

// Store
mov $0x5d24100000000680, %r12
nop
nop
nop
nop
and $10336, %r13
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x880, %r13
and $42242, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r13)
and %r10, %r10

// Store
lea addresses_WC+0x4080, %r10
nop
nop
nop
xor $65519, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%r10)
and $43979, %r10

// Faulty Load
mov $0x5d24100000000680, %rcx
nop
nop
nop
and $41666, %r11
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
