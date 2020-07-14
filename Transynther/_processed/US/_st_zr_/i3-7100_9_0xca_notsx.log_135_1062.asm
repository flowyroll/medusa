.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1bbdd, %rsi
lea addresses_WC_ht+0x15ddd, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r12
mov $29, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x1517d, %rsi
lea addresses_UC_ht+0xb5dd, %rdi
nop
cmp $2436, %rdx
mov $117, %rcx
rep movsb
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x220f, %r12
sub $1883, %r13
movups (%r12), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
add $28239, %rdi
lea addresses_UC_ht+0xfc0d, %rsi
lea addresses_D_ht+0x1d5dd, %rdi
nop
nop
dec %rbx
mov $102, %rcx
rep movsl
cmp $500, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0xbddd, %r15
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
inc %r14

// Faulty Load
lea addresses_US+0x1addd, %rdi
nop
nop
nop
sub $36230, %r10
mov (%rdi), %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'58': 134, '00': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
