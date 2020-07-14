.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xfc47, %rsi
lea addresses_UC_ht+0x1ab07, %rdi
nop
nop
lfence
mov $61, %rcx
rep movsq
nop
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0xcc2f, %r10
nop
nop
nop
nop
nop
xor $40551, %r15
movb $0x61, (%r10)
nop
add $4683, %r10
lea addresses_WT_ht+0xddc7, %r10
nop
nop
nop
nop
cmp %r15, %r15
movl $0x61626364, (%r10)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xc47, %rsi
lea addresses_WT_ht+0x1bb87, %rdi
nop
nop
inc %rdx
mov $127, %rcx
rep movsb
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x45c7, %rsi
lea addresses_D+0xfda3, %rdi
clflush (%rdi)
nop
nop
nop
xor $57662, %r10
mov $64, %rcx
rep movsq

// Exception!!!
nop
nop
nop
xor %rax, %rax
div %rax
sub $63826, %rdi

// Faulty Load
lea addresses_WT+0x6447, %rcx
nop
nop
sub %r13, %r13
movb (%rcx), %al
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'79': 1}
79
*/
