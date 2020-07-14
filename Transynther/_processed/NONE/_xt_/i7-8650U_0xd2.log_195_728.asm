.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1375d, %r12
add %r14, %r14
mov (%r12), %esi
cmp $4412, %rbp
lea addresses_UC_ht+0x16e5a, %r15
nop
nop
nop
xor $55863, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
cmp %r14, %r14
lea addresses_normal_ht+0x18ed1, %r15
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r15)
nop
nop
sub %r12, %r12
lea addresses_A_ht+0xa8d1, %rsi
lea addresses_A_ht+0xf0d1, %rdi
nop
nop
cmp %r14, %r14
mov $44, %rcx
rep movsq
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xf8d1, %r12
nop
nop
nop
nop
cmp $32845, %r13
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r15
and $14405, %rbp
lea addresses_A_ht+0x2711, %r15
nop
add $54451, %rdi
mov (%r15), %ecx
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1ab6d, %r12
clflush (%r12)
nop
xor %r13, %r13
mov (%r12), %r15
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x6f4f, %rdi
nop
nop
nop
nop
cmp $10276, %rcx
mov (%rdi), %r15w
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x148d1, %rsi
lea addresses_A_ht+0x13ae5, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $28, %rcx
rep movsb
nop
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rdi

// Faulty Load
lea addresses_PSE+0x100d1, %r9
nop
nop
nop
xor $40748, %r12
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdi
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'33': 195}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
