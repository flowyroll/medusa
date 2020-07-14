.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc47d, %rsi
lea addresses_WC_ht+0xd13a, %rdi
nop
nop
nop
nop
sub $36571, %r13
mov $107, %rcx
rep movsl
nop
nop
nop
cmp $60431, %rbp
lea addresses_D_ht+0x869, %rbx
nop
nop
nop
nop
nop
cmp $19832, %r14
mov (%rbx), %rbp
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x23d9, %r14
nop
nop
nop
nop
nop
cmp $63308, %r13
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
nop
xor $47494, %r14
lea addresses_UC_ht+0x1ece9, %rdi
nop
nop
nop
nop
nop
sub $37875, %rbp
movb (%rdi), %r13b
nop
nop
dec %r13
lea addresses_UC_ht+0x140c9, %rbx
nop
nop
nop
nop
and %rbp, %rbp
vmovups (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
sub $36724, %r13
lea addresses_WT_ht+0x1b269, %rsi
lea addresses_A_ht+0x1a869, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $12, %rcx
rep movsl
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x1ab77, %rbx
nop
nop
nop
nop
and $39232, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm0, (%rbx)
nop
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x101e9, %rcx
clflush (%rcx)
nop
nop
add $48981, %rdx
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
xor $12613, %rbx

// Store
lea addresses_WT+0x17b69, %r8
clflush (%r8)
nop
nop
xor $32115, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
nop
sub %rbx, %rbx

// Load
lea addresses_UC+0xdc89, %rbx
nop
nop
nop
nop
nop
add %rcx, %rcx
movaps (%rbx), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
sub $21617, %r8

// Store
lea addresses_WC+0x1b6e9, %r13
nop
nop
nop
sub %rcx, %rcx
movb $0x51, (%r13)
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_A+0x1d869, %r11
clflush (%r11)
nop
nop
nop
nop
and $50176, %rcx
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_UC', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'00': 26, '47': 2, '48': 6}
47 00 00 48 00 00 00 48 00 47 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00
*/
