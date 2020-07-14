.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x13ec4, %rdx
nop
sub %r13, %r13
movb (%rdx), %bl
nop
nop
nop
nop
nop
add $14196, %rcx
lea addresses_A_ht+0x31c4, %r11
nop
nop
nop
xor $57131, %rcx
mov (%r11), %si
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xdbc4, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp $43384, %r15
vmovups (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
xor $21472, %rcx
lea addresses_WT_ht+0x147c4, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%rcx), %r11d
nop
nop
nop
nop
nop
sub $15782, %rcx
lea addresses_normal_ht+0x2ac4, %r11
nop
nop
nop
nop
nop
xor $713, %rbx
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x636c, %rbx
nop
nop
nop
nop
nop
add $54132, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm7
and $0xffffffffffffffc0, %rbx
vmovaps %ymm7, (%rbx)
nop
nop
nop
cmp $56078, %rbx
lea addresses_normal_ht+0x83c4, %rbx
inc %rsi
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
sub $55025, %r13
lea addresses_A_ht+0xc2da, %rdx
nop
dec %rbx
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
and $25419, %r13
lea addresses_D_ht+0x165c4, %rsi
lea addresses_A_ht+0x18204, %rdi
clflush (%rdi)
nop
nop
sub %r15, %r15
mov $81, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x90c4, %r15
nop
nop
and %r11, %r11
movw $0x6162, (%r15)
nop
cmp %r13, %r13
lea addresses_UC_ht+0x884, %r13
nop
nop
nop
nop
add %r15, %r15
movb $0x61, (%r13)
nop
nop
nop
dec %r13
lea addresses_D_ht+0x1a0c4, %rbx
cmp $10956, %r11
movb (%rbx), %cl
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x2fc4, %rdi
xor %r13, %r13
mov (%rdi), %si
nop
sub $9504, %rdi
lea addresses_A_ht+0x127a1, %rcx
nop
nop
nop
and $32743, %r11
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rbx
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rdx

// Load
lea addresses_RW+0x15ac4, %rdx
nop
cmp %r13, %r13
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_US+0x37c4, %r14
and $48075, %r9
movups (%r14), %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 1, 'NT': True, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 100}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
