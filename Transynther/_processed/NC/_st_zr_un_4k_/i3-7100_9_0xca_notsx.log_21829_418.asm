.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x17597, %r9
and $4533, %rdi
mov (%r9), %bp
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x15197, %r9
nop
nop
inc %r8
movw $0x6162, (%r9)
nop
nop
nop
nop
add $26125, %rdx
lea addresses_normal_ht+0x9cb7, %rbp
cmp $52222, %rbx
movb (%rbp), %r8b
nop
inc %r9
lea addresses_normal_ht+0x16d17, %r9
clflush (%r9)
nop
nop
nop
and $59654, %rdi
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
add $286, %rdi
lea addresses_WC_ht+0x19717, %rdi
nop
nop
nop
nop
nop
inc %rdx
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
inc %r8
lea addresses_WC_ht+0x2241, %r9
nop
nop
xor $7148, %rbp
movb (%r9), %bl
nop
dec %r8
lea addresses_normal_ht+0x13197, %rsi
lea addresses_A_ht+0x166b0, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r8, %r8
mov $15, %rcx
rep movsw
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0xe837, %rdx
sub $60671, %rsi
movb $0x61, (%rdx)
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x15a37, %rsi
lea addresses_WC_ht+0x41c6, %rdi
sub %rbx, %rbx
mov $3, %rcx
rep movsl
sub $8953, %rbx
lea addresses_D_ht+0xb557, %r8
nop
inc %rcx
movb $0x61, (%r8)
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0xfb67, %r8
nop
nop
nop
dec %rcx
movw $0x6162, (%r8)
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x13897, %rbp
nop
nop
nop
nop
nop
add %r8, %r8
movb (%rbp), %r9b
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x30bf, %rsi
lea addresses_UC_ht+0x67b7, %rdi
nop
and $21927, %r8
mov $10, %rcx
rep movsl
nop
nop
nop
cmp $29938, %rdi
lea addresses_WT_ht+0xdc97, %r8
and $17494, %rsi
movb (%r8), %bl
nop
and $6097, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rcx

// Store
lea addresses_UC+0x4d97, %rcx
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
dec %r11

// Store
lea addresses_WT+0x197, %r10
clflush (%r10)
nop
nop
nop
nop
cmp $1822, %r9
movb $0x51, (%r10)
add $61962, %r11

// Store
lea addresses_US+0x1330c, %r11
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovntdq %ymm0, (%r11)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
mov $0x1d57010000000d97, %r11
clflush (%r11)
nop
add %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movntdq %xmm2, (%r11)
nop
nop
cmp $21381, %rcx

// Store
lea addresses_normal+0x2d97, %rcx
nop
inc %rbx
movl $0x51525354, (%rcx)
nop
nop
nop
dec %r13

// Faulty Load
mov $0x3ef1170000000d97, %rcx
nop
sub $39292, %r13
mov (%rcx), %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'10': 1, '58': 1741, '00': 43, '54': 20044}
54 58 54 58 54 54 54 58 54 54 58 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 58 54 54 54 54 58 54 54 54 54 54 58 54 54 54 54 54 58 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 58 58 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 58 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 58 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 58 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 58 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 58 58 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 58 58 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 58 54 54 54 54 54 54 58 58 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 58 54 54 54 54 54 58 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 58 54 54 54 54 54 58 54 54 58 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 58 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 58 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 58 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 58 58 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 58 54 54 54 54 54 54 54 58 54 54 54 54 58 54 54 58 54 58 54 54 54 54 54 54 54 58 54 54 58 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
