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
lea addresses_UC_ht+0xadf0, %rsi
lea addresses_WC_ht+0x14fdc, %rdi
nop
sub %rdx, %rdx
mov $105, %rcx
rep movsw
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x3c, %rsi
lea addresses_A_ht+0x1afdc, %rdi
clflush (%rdi)
cmp %rdx, %rdx
mov $117, %rcx
rep movsb
nop
nop
nop
nop
nop
and $6748, %rdx
lea addresses_normal_ht+0xa5dc, %rbx
clflush (%rbx)
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, (%rbx)
nop
nop
add $33536, %r9
lea addresses_A_ht+0xa3dc, %rsi
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x10bdc, %rsi
lea addresses_UC_ht+0x1d8e6, %rdi
add %rbx, %rbx
mov $37, %rcx
rep movsl
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x18648, %rsi
lea addresses_D_ht+0x636c, %rdi
nop
nop
and $63790, %r8
mov $95, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x2484, %rbp
nop
nop
nop
cmp $40256, %rdx
mov (%rbp), %si
nop
xor $46766, %r8
lea addresses_normal_ht+0x6edc, %rsi
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
xor $3384, %rsi
lea addresses_WT_ht+0xb3dc, %rcx
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %rcx
vmovaps %ymm5, (%rcx)
nop
add $12900, %rbp
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
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x1a43c, %r12
xor $31563, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
nop
nop
nop
nop
nop
sub $42478, %rsi

// Load
lea addresses_US+0xffdc, %r12
nop
nop
nop
nop
nop
inc %r13
mov (%r12), %ecx
sub %rsi, %rsi

// Faulty Load
lea addresses_D+0x2bdc, %rdx
nop
nop
nop
sub %r8, %r8
vmovntdqa (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True}}
{'45': 2203, '00': 19619, '49': 7}
00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 45 00 45 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00
*/
