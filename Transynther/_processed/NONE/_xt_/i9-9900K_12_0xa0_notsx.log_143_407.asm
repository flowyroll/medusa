.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1748f, %r8
nop
nop
add $10235, %r15
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
xor $54672, %r14
lea addresses_D_ht+0x884f, %rsi
lea addresses_WT_ht+0x1906f, %rdi
clflush (%rdi)
nop
and %rdx, %rdx
mov $0, %rcx
rep movsl
nop
nop
sub $40135, %r8
lea addresses_A_ht+0xecef, %rsi
lea addresses_WC_ht+0xecef, %rdi
clflush (%rsi)
nop
nop
dec %r8
mov $27, %rcx
rep movsl
nop
cmp $59583, %r15
lea addresses_WC_ht+0x158d1, %rsi
lea addresses_normal_ht+0x10fbc, %rdi
nop
nop
nop
nop
nop
xor $54957, %r8
mov $72, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_A_ht+0x1960f, %r14
nop
nop
nop
nop
add $1733, %rdi
movb (%r14), %dl
xor %r14, %r14
lea addresses_WC_ht+0xb8ef, %rcx
nop
nop
nop
cmp $17616, %r8
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
add %r8, %r8
lea addresses_D_ht+0x154ef, %rsi
nop
nop
add $23440, %rcx
mov (%rsi), %rdi
nop
nop
and $6144, %rdi
lea addresses_WC_ht+0x178ef, %rsi
lea addresses_WT_ht+0x13228, %rdi
nop
nop
nop
xor %r10, %r10
mov $63, %rcx
rep movsw
nop
sub $7238, %r8
lea addresses_WT_ht+0x16d2f, %r15
nop
nop
nop
add %r14, %r14
movb $0x61, (%r15)
sub $50144, %r15
lea addresses_WC_ht+0x100ef, %rdi
nop
nop
xor $7165, %r8
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x3cef, %rsi
lea addresses_WT_ht+0xef7f, %rdi
nop
nop
nop
nop
nop
xor $2808, %r14
mov $22, %rcx
rep movsw
nop
nop
sub $299, %r14
lea addresses_WC_ht+0x80ef, %r15
nop
nop
add %r14, %r14
movb $0x61, (%r15)
and %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rsi

// Store
mov $0x29efb100000004ef, %r10
cmp %r11, %r11
movl $0x51525354, (%r10)
and %rsi, %rsi

// Store
mov $0x2f, %r12
nop
nop
sub %r14, %r14
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x4c83, %rbx
nop
nop
nop
nop
nop
xor $33056, %r12
movl $0x51525354, (%rbx)
nop
xor $51809, %rcx

// Load
lea addresses_normal+0xdc6f, %rbx
nop
cmp $48830, %rcx
mov (%rbx), %r14w
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_RW+0x138ef, %r11
xor %r12, %r12
movb (%r11), %cl
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'32': 143}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
