.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1887a, %r12
clflush (%r12)
nop
nop
nop
nop
nop
cmp $31313, %r8
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
add $34712, %rdi
lea addresses_UC_ht+0xbbca, %rcx
dec %rsi
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0xff2a, %r8
nop
nop
nop
nop
dec %r13
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xddda, %r11
nop
inc %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r11)
nop
inc %rcx
lea addresses_WT_ht+0x1b5ea, %r8
clflush (%r8)
nop
add %r12, %r12
mov (%r8), %r11d
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x72aa, %rcx
clflush (%rcx)
nop
nop
nop
and $60044, %r8
movb (%rcx), %r12b
and %rdi, %rdi
lea addresses_WC_ht+0x1dcaa, %rsi
nop
nop
nop
nop
nop
sub $61689, %r11
mov (%rsi), %ecx
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x178f2, %r11
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r11)
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1ecaa, %r8
clflush (%r8)
nop
nop
sub $50863, %rcx
movl $0x61626364, (%r8)
nop
nop
inc %r13
lea addresses_WT_ht+0x9eaa, %rcx
sub $14750, %r11
mov (%rcx), %r8w
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xf2d6, %r8
xor %rcx, %rcx
movups (%r8), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
and $25008, %r13
lea addresses_UC_ht+0x34aa, %r13
add %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r13)
nop
nop
add $40246, %r11
lea addresses_normal_ht+0x36a, %rsi
nop
nop
cmp $50736, %r12
movb (%rsi), %r13b
cmp $19069, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rsi

// Load
lea addresses_RW+0x1b5ee, %r8
clflush (%r8)
nop
nop
nop
nop
nop
and $38822, %rsi
mov (%r8), %r13d

// Exception!!!
nop
nop
nop
nop
mov (0), %r10
nop
nop
nop
nop
sub $24962, %rsi

// Faulty Load
lea addresses_WC+0x28aa, %r15
nop
nop
nop
and %r12, %r12
vmovaps (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'44': 2185, '00': 16475, '47': 819, '48': 2350}
00 00 48 00 00 00 00 47 00 47 00 44 00 00 48 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 44 47 47 47 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 47 47 00 44 00 00 44 00 00 00 00 00 00 00 48 00 00 47 00 00 00 48 00 00 00 48 44 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 44 00 00 48 00 48 00 48 00 00 00 00 47 48 00 00 00 00 00 00 48 47 00 48 48 00 00 00 00 47 00 44 00 00 48 48 00 00 47 00 00 00 00 00 00 00 00 00 00 48 00 00 47 00 00 48 00 00 00 00 00 00 47 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 48 00 00 48 47 00 00 00 00 00 00 47 00 48 00 44 00 00 44 00 48 00 48 44 00 44 48 00 00 44 00 00 00 48 00 47 00 00 44 48 00 00 00 48 00 48 48 44 00 47 00 00 00 00 00 00 00 00 00 44 00 00 44 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 47 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 44 48 00 00 00 00 00 00 48 00 44 00 00 00 00 44 44 00 00 48 44 48 00 00 44 00 48 00 48 00 00 00 48 00 44 00 00 00 00 47 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 44 00 48 00 48 44 00 48 00 48 44 00 00 00 48 44 00 00 00 00 44 00 00 44 00 44 00 44 48 48 00 00 00 00 00 00 00 44 00 48 44 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 48 44 00 00 48 00 48 00 48 47 47 00 00 00 00 00 00 00 00 44 00 00 47 00 00 48 00 00 00 00 00 00 47 00 00 00 00 00 44 00 44 44 00 00 00 47 00 44 47 00 00 48 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 48 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 48 00 00 00 48 47 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 48 00 48 00 00 44 00 48 00 48 48 00 00 00 00 00 00 44 44 44 00 00 00 44 00 00 00 00 00 00 00 00 48 00 00 00 44 00 48 00 00 00 00 00 00 00 00 48 00 47 48 00 00 00 48 47 00 00 00 00 44 44 00 47 44 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 44 48 00 00 44 44 00 00 00 00 44 00 48 00 00 00 00 00 00 47 00 00 00 44 00 00 00 00 47 00 44 00 44 47 00 00 44 00 47 00 00 00 48 47 00 00 00 00 44 48 47 00 00 00 00 00 00 00 00 44 00 00 48 00 00 44 00 44 00 00 48 00 00 00 00 00 00 44 00 00 00 00 48 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 44 48 00 00 44 44 00 00 44 44 00 48 00 48 00 00 48 44 00 00 00 00 44 47 00 48 00 00 00 47 00 00 00 00 00 00 00 48 00 48 00 48 00 00 44 00 00 00 48 47 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 48 00 00 00 48 48 00 00 44 00 00 44 00 00 00 44 00 44 44 00 47 00 00 00 00 44 00 00 47 48 48 00 00 44 48 48 00 44 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 44 00 00 00 48 00 44 00 00 00 48 00 48 00 00 44 00 00 00 00 00 00 00 00 44 00 48 47 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 44 48 00 00 00 00 00 00 00 00 00 47 00 44 00 00 00 00 00 00
*/
