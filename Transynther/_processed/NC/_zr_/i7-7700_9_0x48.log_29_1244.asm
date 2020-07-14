.global s_prepare_buffers
s_prepare_buffers:
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x137d1, %rsi
lea addresses_UC_ht+0x4989, %rdi
nop
nop
cmp $7851, %rbx
mov $65, %rcx
rep movsb
nop
nop
sub $56328, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x1df1, %r9
xor %rax, %rax
movl $0x51525354, (%r9)
nop
nop
sub %rsi, %rsi

// Load
mov $0xdc9, %rax
nop
nop
nop
nop
nop
add $13016, %rdx
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
nop
nop
xor $25039, %rdx

// Store
mov $0xace, %rsi
nop
nop
nop
nop
nop
xor $14605, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
and $36849, %r9

// Faulty Load
mov $0x32d9290000000cb1, %rsi
nop
nop
nop
nop
nop
sub $32, %r14
mov (%rsi), %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'00': 29}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
