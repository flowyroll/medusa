.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15a1f, %r12
clflush (%r12)
nop
nop
nop
nop
xor $18777, %rdi
movw $0x6162, (%r12)
nop
and $19631, %rbx
lea addresses_normal_ht+0x7adf, %rcx
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x1b697, %rsi
lea addresses_D_ht+0x5297, %rdi
inc %r8
mov $3, %rcx
rep movsl
nop
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_PSE+0x8f7, %rdi
sub %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
mov $0x112a7a0000000497, %rax
sub $53552, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rax)
inc %r15

// Store
lea addresses_D+0x1282f, %r15
sub $1442, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
and $1078, %rax

// Faulty Load
lea addresses_PSE+0xec97, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rsi), %r15d
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'33': 18}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
