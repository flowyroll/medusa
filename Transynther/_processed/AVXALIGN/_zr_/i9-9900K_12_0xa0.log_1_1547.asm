.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8546, %r10
nop
nop
nop
dec %r9
mov $0x6162636465666768, %r8
movq %r8, (%r10)
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x6086, %rsi
lea addresses_D_ht+0x10946, %rdi
nop
nop
nop
add $54934, %rax
mov $114, %rcx
rep movsb
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xa668, %rsi
lea addresses_UC_ht+0xda46, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $3, %rcx
rep movsw
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x14a6e, %rcx
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x1ca6, %rcx
nop
nop
nop
nop
sub $54551, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%rcx)
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x14c46, %rcx
nop
nop
nop
nop
nop
xor $64788, %rbx
mov (%rcx), %rsi
nop
cmp $37916, %rcx
lea addresses_normal_ht+0x13d46, %rsi
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%rsi)
nop
nop
and $31257, %rbx
lea addresses_A_ht+0x11946, %rcx
nop
nop
nop
nop
nop
cmp $26880, %rbx
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
dec %rax
lea addresses_D_ht+0xadb6, %r9
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%r9)
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x18f56, %rsi
lea addresses_A_ht+0x1cdb6, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $57779, %r9
mov $121, %rcx
rep movsq
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x1ad0a, %rsi
clflush (%rsi)
nop
nop
inc %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
and $47759, %rax
lea addresses_WC_ht+0x946, %r10
xor $28772, %r8
mov $0x6162636465666768, %r9
movq %r9, (%r10)
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0xa56e, %rsi
lea addresses_UC+0x8d26, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $124, %rcx
rep movsw
nop
nop
nop
and $22350, %rdi

// Faulty Load
lea addresses_D+0x18946, %r10
nop
nop
nop
xor %r8, %r8
movntdqa (%r10), %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'00': 1}
00
*/
