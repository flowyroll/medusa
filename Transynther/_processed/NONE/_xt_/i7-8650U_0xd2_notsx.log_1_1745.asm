.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1d91c, %rsi
lea addresses_D_ht+0x1a8fc, %rdi
nop
nop
and %r13, %r13
mov $75, %rcx
rep movsl
nop
nop
cmp $31443, %rbp
lea addresses_UC_ht+0xf89c, %rsi
lea addresses_WT_ht+0x51c6, %rdi
clflush (%rdi)
nop
xor %rax, %rax
mov $33, %rcx
rep movsb
nop
nop
nop
and $26821, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x1409c, %rsi
mov $0xf9c, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $29173, %r10
mov $48, %rcx
rep movsb
nop
nop
xor %rcx, %rcx

// Store
lea addresses_PSE+0x49c, %r15
nop
cmp $52826, %rbx
movb $0x51, (%r15)
nop
sub $10547, %rsi

// Store
lea addresses_US+0xaed4, %r15
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, (%r15)
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_D+0x1e89c, %rcx
add %rbx, %rbx
mov (%rcx), %esi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'36': 1}
36
*/
