.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x170f0, %r10
nop
nop
nop
nop
nop
and %rbx, %rbx
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x3f0c, %rsi
lea addresses_normal_ht+0x3c68, %rdi
nop
nop
nop
dec %r9
mov $124, %rcx
rep movsw
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x1418c, %rsi
lea addresses_D_ht+0x17e0c, %rdi
nop
nop
nop
inc %rdx
mov $113, %rcx
rep movsq
nop
cmp $42547, %rdx
lea addresses_normal_ht+0xd50c, %rbx
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%rbx)
nop
nop
nop
nop
nop
sub $7971, %rdi
lea addresses_normal_ht+0x1dd04, %rdx
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x14750, %rsi
lea addresses_UC_ht+0x7ff4, %rdi
clflush (%rsi)
nop
nop
nop
xor %r9, %r9
mov $44, %rcx
rep movsb
nop
nop
nop
nop
and $21562, %rbx
lea addresses_D_ht+0x650c, %rbx
and $9093, %rsi
mov (%rbx), %edi
nop
nop
nop
nop
nop
sub $7879, %rcx
lea addresses_A_ht+0x13fc, %rsi
lea addresses_D_ht+0x844c, %rdi
nop
nop
add $28213, %rbx
mov $42, %rcx
rep movsl
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x1ca77, %rax
nop
nop
nop
nop
nop
and $20368, %rsi
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
xor $39408, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x690c, %rsi
lea addresses_A+0x1850c, %rdi
nop
nop
nop
nop
add $9570, %r13
mov $117, %rcx
rep movsb
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_A+0x1850c, %r8
add $60215, %rcx
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'33': 157}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
