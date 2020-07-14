.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x15f09, %r9
nop
nop
and $44903, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%r9)
nop
nop
lfence
lea addresses_WC_ht+0xcd09, %rsi
lea addresses_A_ht+0x1dbed, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $60214, %r11
mov $120, %rcx
rep movsl
nop
nop
nop
nop
sub $21269, %rcx
lea addresses_WC_ht+0x19349, %rsi
lea addresses_normal_ht+0x19da9, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $124, %rcx
rep movsq
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0xf669, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0xd249, %rsi
lea addresses_WT_ht+0x6249, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $27126, %rax
mov $51, %rcx
rep movsq
nop
nop
xor $24484, %rdi
lea addresses_D_ht+0x17249, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor $42114, %r11
mov (%rcx), %r12w
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x17249, %r8
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
sub $50923, %rdi
lea addresses_WC_ht+0x1b8b7, %r11
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%r11), %eax
nop
sub $15043, %r8
lea addresses_WT_ht+0xcd59, %r12
nop
nop
nop
nop
nop
cmp $16298, %rax
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
and $36145, %r8
lea addresses_normal_ht+0x15f49, %r8
clflush (%r8)
nop
nop
nop
inc %rdi
mov (%r8), %r12w
nop
nop
nop
nop
cmp $37306, %rdi
lea addresses_A_ht+0x2549, %rsi
lea addresses_D_ht+0x9a49, %rdi
nop
nop
sub $50004, %rax
mov $102, %rcx
rep movsl
nop
nop
dec %rcx
lea addresses_normal_ht+0x1e20, %r11
clflush (%r11)
nop
nop
nop
nop
cmp %r8, %r8
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
add $23529, %rdi
lea addresses_A_ht+0x1b649, %r9
nop
nop
nop
nop
nop
add %rsi, %rsi
movw $0x6162, (%r9)
nop
nop
nop
nop
cmp $25282, %rax
lea addresses_normal_ht+0x10751, %rcx
nop
nop
nop
add %r12, %r12
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x1e449, %rsi
lea addresses_A_ht+0x5869, %rdi
nop
nop
inc %r9
mov $40, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $49959, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_D+0x1b2d1, %r13
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_D+0x497b, %r11
nop
nop
dec %rax
movw $0x5152, (%r11)
sub $31348, %rbx

// Store
mov $0xec1, %r13
cmp %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r13)
nop
nop
xor $56260, %rax

// Faulty Load
lea addresses_RW+0x2249, %rbp
nop
nop
inc %rax
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
