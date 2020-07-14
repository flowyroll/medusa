.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a156, %rax
nop
nop
nop
nop
and %r11, %r11
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
xor %r15, %r15
lea addresses_A_ht+0x7066, %r15
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%r15)
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0xd405, %r8
nop
nop
nop
and %r11, %r11
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r14
cmp %r14, %r14
lea addresses_WC_ht+0x14856, %rbx
clflush (%rbx)
nop
nop
sub $55070, %rcx
mov (%rbx), %r11
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x9456, %r8
nop
nop
sub $39206, %r14
movl $0x61626364, (%r8)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x43d6, %rsi
lea addresses_WC_ht+0x152e6, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rax, %rax
mov $63, %rcx
rep movsw
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x4d56, %rbx
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rbx)
nop
nop
add %rax, %rax
lea addresses_A_ht+0x13c56, %rsi
lea addresses_WT_ht+0x9cd6, %rdi
nop
inc %rbx
mov $84, %rcx
rep movsq
nop
nop
nop
nop
add $25216, %rcx
lea addresses_A_ht+0x16af6, %rsi
lea addresses_normal_ht+0x1b1f6, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $102, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0xf456, %r14
nop
nop
nop
nop
sub %r11, %r11
movb (%r14), %cl
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xfc06, %rsi
lea addresses_D_ht+0x19c56, %rdi
nop
nop
nop
nop
add $62266, %r8
mov $101, %rcx
rep movsb
nop
nop
nop
xor $30097, %r11
lea addresses_normal_ht+0x13536, %rsi
lea addresses_D_ht+0x1255e, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r11, %r11
mov $46, %rcx
rep movsq
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0x6c56, %rax
nop
nop
cmp $46996, %r10
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}}
{'00': 60}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
