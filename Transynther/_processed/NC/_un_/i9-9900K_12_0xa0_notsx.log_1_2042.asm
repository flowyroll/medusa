.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x12340, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
lfence
mov (%rsi), %ebx
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x5ddc, %rbx
clflush (%rbx)
nop
nop
nop
nop
add %r9, %r9
mov (%rbx), %r12d
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x1efc0, %rsi
lea addresses_WC_ht+0x1865c, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $125, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x1afc0, %rbx
nop
nop
nop
and $15334, %rcx
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %rsi
sub $29295, %r12
lea addresses_D_ht+0x5402, %rsi
lea addresses_WC_ht+0x11040, %rdi
clflush (%rdi)
nop
nop
nop
inc %rbx
mov $14, %rcx
rep movsb
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x1ebe0, %rsi
lea addresses_WC_ht+0x4540, %rdi
nop
nop
nop
sub %r12, %r12
mov $40, %rcx
rep movsw
nop
nop
nop
xor $4019, %r12
lea addresses_WC_ht+0x1da40, %rdi
nop
nop
nop
sub %rbx, %rbx
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xf11e, %rdi
cmp %rcx, %rcx
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %r9
nop
sub %r12, %r12
lea addresses_WT_ht+0x8440, %rsi
lea addresses_D_ht+0x13240, %rdi
nop
sub $6809, %r8
mov $74, %rcx
rep movsb
nop
nop
nop
sub $60033, %rcx
lea addresses_UC_ht+0x1c2e0, %rcx
nop
nop
add %rbx, %rbx
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm4
vpextrq $0, %xmm4, %r12
nop
dec %r11
lea addresses_WT_ht+0x2a40, %rcx
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm5, (%rcx)
nop
and $49156, %r12
lea addresses_WC_ht+0x1bc40, %r9
nop
cmp %r8, %r8
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm3
vpextrq $0, %xmm3, %rsi
dec %r8
lea addresses_WC_ht+0x4210, %rsi
lea addresses_normal_ht+0xcfb0, %rdi
nop
nop
nop
nop
nop
and $31905, %rbx
mov $80, %rcx
rep movsq
cmp %rsi, %rsi
lea addresses_normal_ht+0xc040, %rsi
lea addresses_D_ht+0xa0e0, %rdi
xor $24802, %r9
mov $103, %rcx
rep movsw
nop
sub $58419, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rdx
push %rsi

// Load
lea addresses_RW+0xaf24, %rbx
nop
xor %rsi, %rsi
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
dec %rbx

// Load
mov $0x201e380000000240, %rbx
nop
nop
sub $51949, %r10
movntdqa (%rbx), %xmm1
vpextrq $0, %xmm1, %rdx
xor %rsi, %rsi

// Store
lea addresses_A+0xc274, %rdx
nop
nop
inc %r11
movl $0x51525354, (%rdx)
nop
nop
add %r12, %r12

// Store
lea addresses_WT+0x7b40, %r12
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovntdq %ymm1, (%r12)
nop
sub $32129, %rdx

// Store
lea addresses_A+0xa480, %r12
nop
nop
nop
add %r10, %r10
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_WC+0x312c, %r10
nop
nop
nop
nop
nop
xor %r11, %r11
movw $0x5152, (%r10)
nop
nop
nop
and $33259, %r9

// Load
lea addresses_D+0x187c0, %r11
nop
add $17479, %rsi
mov (%r11), %r9
nop
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
mov $0x201e380000000240, %rbx
add %rdx, %rdx
mov (%rbx), %r10d
lea oracles, %r10
and $0xff, %r10
shlq $12, %r10
mov (%r10,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'d4': 1}
d4
*/
