.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a1fb, %rsi
nop
nop
xor %r12, %r12
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x1a227, %rsi
lea addresses_A_ht+0x19a3b, %rdi
nop
nop
and $33979, %rbp
mov $70, %rcx
rep movsw
nop
nop
inc %rcx
lea addresses_WT_ht+0xaf1b, %rsi
lea addresses_WC_ht+0x1dfab, %rdi
nop
nop
inc %r15
mov $115, %rcx
rep movsb
nop
nop
dec %rbp
lea addresses_UC_ht+0x1e8bf, %rsi
lea addresses_normal_ht+0xd9d3, %rdi
nop
nop
nop
and $43167, %r15
mov $117, %rcx
rep movsw
nop
nop
nop
sub $506, %rsi
lea addresses_normal_ht+0x1316, %rcx
dec %r15
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rdi

// Load
lea addresses_RW+0x539b, %r10
cmp $46240, %r9
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rbp
nop
cmp $49038, %r9

// Load
lea addresses_US+0xee3b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %rbx
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
xor $18915, %r11

// Store
lea addresses_US+0xe23b, %r9
nop
nop
nop
nop
inc %rbp
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
xor $48748, %r14

// Load
lea addresses_normal+0x1dbe3, %rdi
nop
cmp %r14, %r14
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
nop
xor $52675, %rbx

// Store
lea addresses_UC+0x15db3, %r11
nop
nop
nop
sub $59533, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
and $48095, %r14

// Store
mov $0x478637000000087b, %r11
nop
nop
nop
nop
dec %rbx
movl $0x51525354, (%r11)
sub $41661, %r14

// Store
lea addresses_D+0x1723b, %rdi
sub %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
inc %rbx

// Store
lea addresses_D+0x1723b, %r11
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r11)
nop
and %rbp, %rbp

// Faulty Load
lea addresses_D+0x1723b, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov (%rdi), %ebx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'58': 2}
58 58
*/
