.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x11637, %rsi
lea addresses_WC_ht+0x72f7, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $48, %rcx
rep movsl
nop
nop
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x1c247, %rsi
lea addresses_WC_ht+0x730f, %rdi
nop
lfence
mov $17, %rcx
rep movsl
nop
nop
nop
dec %rax
lea addresses_A_ht+0x13dd7, %rsi
lea addresses_normal_ht+0xdf37, %rdi
clflush (%rsi)
xor $36906, %r15
mov $105, %rcx
rep movsq
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1d0b7, %rsi
lea addresses_UC_ht+0x16b37, %rdi
and %rax, %rax
mov $119, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x1e2f7, %rcx
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
add $21093, %rsi
lea addresses_WT_ht+0x9337, %rsi
lea addresses_D_ht+0x1ddd7, %rdi
add $12702, %r15
mov $12, %rcx
rep movsw
nop
nop
nop
nop
add $54421, %r15
lea addresses_A_ht+0x17217, %rsi
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0xfddf, %rsi
nop
nop
inc %rax
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x227, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub $19960, %r11
lea addresses_normal_ht+0x1d537, %rdi
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_UC+0x7633, %rbx
clflush (%rbx)
nop
sub %rbp, %rbp
movl $0x51525354, (%rbx)
nop
nop
nop
nop
add $64238, %r10

// Faulty Load
mov $0x2f0f3e0000000737, %r8
nop
nop
nop
nop
add $17431, %rax
mov (%r8), %cx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
