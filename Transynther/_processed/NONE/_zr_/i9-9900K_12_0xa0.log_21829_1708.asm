.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x32eb, %rsi
lea addresses_UC_ht+0x12eeb, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $48, %rcx
rep movsl
nop
nop
nop
nop
sub $51346, %rdx
lea addresses_D_ht+0x14ceb, %rsi
lea addresses_A_ht+0x4eb, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $110, %rcx
rep movsq
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x1e06b, %rdi
nop
nop
inc %r14
movl $0x61626364, (%rdi)
nop
sub %r14, %r14
lea addresses_WC_ht+0x1b5b, %rsi
lea addresses_WC_ht+0x8b6b, %rdi
clflush (%rsi)
nop
dec %rbp
mov $24, %rcx
rep movsw
nop
nop
and $39342, %r8
lea addresses_WT_ht+0xf4eb, %rsi
lea addresses_UC_ht+0x1c6cf, %rdi
nop
nop
cmp %rdx, %rdx
mov $117, %rcx
rep movsq
sub %rbp, %rbp
lea addresses_D_ht+0x1996b, %rsi
lea addresses_A_ht+0x132e8, %rdi
clflush (%rdi)
nop
nop
mfence
mov $100, %rcx
rep movsb
nop
nop
nop
sub $64352, %r12
lea addresses_UC_ht+0x1b84b, %rsi
lea addresses_UC_ht+0x19aeb, %rdi
clflush (%rsi)
add %r8, %r8
mov $121, %rcx
rep movsb
and %rsi, %rsi
lea addresses_WC_ht+0x9df, %rdi
nop
cmp $58358, %rbp
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
xor $63220, %r14
lea addresses_UC_ht+0x3d6b, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r14), %si
nop
nop
nop
nop
nop
xor $52247, %rbp
lea addresses_UC_ht+0x82eb, %r14
xor %rcx, %rcx
movl $0x61626364, (%r14)
sub $36454, %rdx
lea addresses_UC_ht+0x189eb, %rsi
lea addresses_WT_ht+0x9eeb, %rdi
clflush (%rdi)
sub %rdx, %rdx
mov $106, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x10eb, %r12
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x60eb, %r14
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %r14
movaps %xmm7, (%r14)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0xdaeb, %rsi
lea addresses_normal_ht+0x10eeb, %rdi
nop
nop
nop
nop
nop
and $36879, %r8
mov $44, %rcx
rep movsq
nop
nop
nop
nop
add $47479, %r14
lea addresses_UC_ht+0x7249, %rsi
lea addresses_normal_ht+0xec45, %rdi
nop
nop
sub %r12, %r12
mov $69, %rcx
rep movsw
nop
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_UC+0x12aeb, %r15
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%r15), %edi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
