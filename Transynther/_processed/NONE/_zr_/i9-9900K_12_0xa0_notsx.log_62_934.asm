.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15775, %rsi
lea addresses_A_ht+0x7f65, %rdi
clflush (%rdi)
nop
xor %r10, %r10
mov $25, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_UC_ht+0x2ee5, %r9
nop
nop
nop
nop
nop
cmp %r13, %r13
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
xor $5381, %r13
lea addresses_WT_ht+0xf665, %rcx
nop
nop
xor %r13, %r13
mov (%rcx), %r9w
nop
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x11740, %rsi
lea addresses_D_ht+0x8285, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $98, %rcx
rep movsl
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1305d, %r9
nop
nop
xor %rdi, %rdi
movb $0x61, (%r9)
nop
add $1161, %r14
lea addresses_WT_ht+0x186dd, %rdi
nop
nop
dec %rcx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
sub $57944, %rsi
lea addresses_D_ht+0x1ee5, %r14
nop
nop
nop
nop
sub $30295, %rbx
mov (%r14), %ecx
nop
add %r9, %r9
lea addresses_WC_ht+0x16765, %r10
nop
nop
nop
nop
sub %r13, %r13
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
sub $50980, %rcx
lea addresses_WT_ht+0x9692, %r14
nop
nop
nop
sub $48745, %rdi
movb $0x61, (%r14)
nop
and $38692, %rsi
lea addresses_A_ht+0x3bcd, %rsi
lea addresses_A_ht+0xfed5, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $31793, %r10
mov $117, %rcx
rep movsw
nop
nop
nop
nop
cmp $51806, %r14
lea addresses_WT_ht+0x5265, %rsi
lea addresses_WC_ht+0x1cfe5, %rdi
clflush (%rsi)
nop
nop
sub %r13, %r13
mov $39, %rcx
rep movsw
nop
cmp $44501, %rsi
lea addresses_WT_ht+0xf765, %rsi
lea addresses_UC_ht+0x120e3, %rdi
nop
xor $42232, %r14
mov $114, %rcx
rep movsq
cmp $48971, %rdi
lea addresses_A_ht+0x5ee5, %r10
nop
nop
nop
nop
dec %r13
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_PSE+0x175d1, %r8
nop
nop
nop
nop
nop
xor $27750, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovaps %ymm3, (%r8)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_WC+0x7b79, %rax
clflush (%rax)
nop
nop
nop
nop
xor %r11, %r11
movb $0x51, (%rax)
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0x13f65, %rdi
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
add %rdi, %rdi

// Store
lea addresses_RW+0x17303, %rdi
nop
nop
xor $22685, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
nop
add $49289, %rdi

// Faulty Load
lea addresses_normal+0x13f65, %r11
nop
nop
nop
nop
nop
dec %rax
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'00': 62}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
