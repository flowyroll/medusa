.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf0a7, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor $55389, %rbp
movw $0x6162, (%rdx)
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x1a167, %rsi
lea addresses_WC_ht+0x1aefb, %rdi
nop
nop
and $6438, %r13
mov $113, %rcx
rep movsl
nop
nop
xor $1658, %rbx
lea addresses_D_ht+0x15347, %rsi
xor $26078, %r11
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
inc %rsi
lea addresses_A_ht+0x17a8d, %r11
nop
nop
nop
nop
sub $7231, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
xor $57636, %rbp
lea addresses_WC_ht+0x427, %rbp
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
nop
add $51981, %rbx
lea addresses_WC_ht+0x1d26f, %rsi
lea addresses_UC_ht+0x1c0fc, %rdi
nop
nop
nop
nop
xor $56519, %r11
mov $93, %rcx
rep movsw
nop
cmp $6408, %rcx
lea addresses_normal_ht+0x8dc7, %rsi
lea addresses_A_ht+0x155a7, %rdi
nop
nop
nop
inc %rdx
mov $24, %rcx
rep movsq
nop
nop
and $51308, %r13
lea addresses_D_ht+0x1aa7, %r11
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r11)
nop
and $27476, %rcx
lea addresses_normal_ht+0x1dfa7, %rsi
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
add $54699, %rbx
lea addresses_WC_ht+0x1e47, %rdi
nop
nop
nop
nop
nop
cmp $48665, %rbp
movb (%rdi), %cl
cmp $59225, %rdi
lea addresses_normal_ht+0x9a7, %rdi
nop
nop
nop
sub %rdx, %rdx
mov (%rdi), %cx
xor $32956, %rbx
lea addresses_WT_ht+0x1ba3f, %rcx
inc %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
and $30069, %r13
lea addresses_WC_ht+0x1d287, %rcx
nop
nop
and $10838, %rdx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x16c90, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
add $29716, %rbx
lea addresses_WC_ht+0x1758f, %rbp
nop
nop
nop
nop
nop
xor %rdi, %rdi
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
and $11528, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_UC+0x119a7, %r15
nop
dec %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r15)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_WC+0x15da7, %rax
nop
nop
nop
add $20908, %rdx
movl $0x51525354, (%rax)
nop
cmp %r9, %r9

// Load
lea addresses_WC+0x1a7, %rsi
nop
nop
nop
nop
nop
cmp %r11, %r11
movb (%rsi), %r9b
nop
nop
cmp %rax, %rax

// Store
mov $0x5959c00000000b7b, %r10
clflush (%r10)
add $32162, %r15
movw $0x5152, (%r10)
nop
nop
nop
nop
add $62648, %r10

// Faulty Load
lea addresses_A+0x1f1a7, %r9
nop
nop
inc %r15
mov (%r9), %r11w
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
