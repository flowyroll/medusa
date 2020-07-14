.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13388, %rsi
lea addresses_WC_ht+0x16708, %rdi
nop
nop
nop
nop
sub $13108, %r15
mov $123, %rcx
rep movsb
mfence
lea addresses_D_ht+0x7768, %rax
nop
nop
nop
nop
sub $13563, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
xor $12994, %rdi
lea addresses_A_ht+0x15c61, %rsi
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x125b60000000cea, %rcx
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%rcx)
and %r10, %r10

// Store
lea addresses_normal+0xb988, %rbx
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_D+0xb071, %r10
nop
nop
nop
cmp $29155, %rdi
movb $0x51, (%r10)
nop
nop
xor $3964, %rbx

// Faulty Load
lea addresses_WT+0x6188, %r13
nop
nop
nop
xor %rdx, %rdx
mov (%r13), %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'39': 1}
39
*/
