.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x125d7, %r9
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, (%r9)
nop
add %rcx, %rcx
lea addresses_WT_ht+0x14d7f, %rsi
lea addresses_normal_ht+0x114ff, %rdi
nop
nop
nop
nop
inc %rax
mov $56, %rcx
rep movsw
nop
nop
inc %r14
lea addresses_UC_ht+0x16d0d, %r14
clflush (%r14)
nop
and $62933, %r9
movl $0x61626364, (%r14)
cmp $46361, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
mov $0x13f, %rax
nop
sub $58230, %rsi
movb $0x51, (%rax)
cmp %rax, %rax

// Faulty Load
lea addresses_WT+0x197f, %rdx
nop
nop
nop
nop
inc %r15
mov (%rdx), %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'39': 3}
39 39 39
*/
