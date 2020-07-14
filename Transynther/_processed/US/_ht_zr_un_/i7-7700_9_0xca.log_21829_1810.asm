.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x15472, %rsi
lea addresses_WC_ht+0x1aa70, %rdi
nop
nop
xor $47786, %rbx
mov $95, %rcx
rep movsw
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0xca70, %r8
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x184b0, %rsi
nop
dec %r8
mov (%rsi), %rbx
dec %r13
lea addresses_D_ht+0x66ee, %rbx
nop
sub %r13, %r13
mov (%rbx), %rcx
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x6f70, %rsi
lea addresses_UC_ht+0x1b70, %rdi
nop
nop
nop
add $2965, %r13
mov $35, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $56955, %r11
lea addresses_D_ht+0x371a, %rsi
lea addresses_A_ht+0x1d740, %rdi
nop
nop
nop
add $36973, %r13
mov $68, %rcx
rep movsq
add $64227, %rdi
lea addresses_UC_ht+0xcb30, %r13
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r13), %si
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x5df0, %rsi
lea addresses_UC_ht+0x13c70, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $62442, %rbp
mov $19, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x137ca, %rsi
lea addresses_A_ht+0x475c, %rdi
nop
add %r8, %r8
mov $111, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0x9d70, %rsi
lea addresses_WT_ht+0x1d3f4, %rdi
clflush (%rdi)
nop
nop
nop
and %r11, %r11
mov $69, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $1773, %r11
lea addresses_UC_ht+0xe270, %rsi
lea addresses_UC_ht+0x1c138, %rdi
nop
nop
dec %r8
mov $24, %rcx
rep movsl
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x3a70, %r11
nop
nop
nop
and $52096, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%r11)
nop
nop
mfence
lea addresses_normal_ht+0x1c3b, %rsi
nop
nop
nop
cmp $23014, %r8
movl $0x61626364, (%rsi)
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0xf940, %rsi
nop
inc %rbx
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
cmp $57575, %rcx
lea addresses_D_ht+0x1e336, %r8
nop
add $24313, %r13
mov (%r8), %rcx
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rdx

// Load
lea addresses_normal+0xada0, %r15
nop
nop
nop
nop
nop
add $8917, %r10
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
cmp $38380, %r13

// Store
lea addresses_PSE+0x1a0d0, %rbx
nop
add %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
xor $29356, %rdx

// Faulty Load
lea addresses_US+0xb270, %r15
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'46': 801, '48': 274, '47': 8, '00': 1902, 'e8': 1, '49': 11, 'c8': 9359, 'f2': 1, 'c7': 9292, '74': 1, 'ff': 79, '1a': 97, 'ec': 2, '01': 1}
00 c7 c7 1a c7 c7 c7 46 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 1a c7 c7 c7 c7 c7 1a c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 48 46 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 00 c7 c7 c7 00 c7 c7 c7 c7 00 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 48 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 00 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 00 c7 c7 00 c7 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 48 c7 c7 c7 00 00 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 c7 00 00 c7 c7 c7 46 c7 c7 c7 48 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 00 c7 c7 00 c7 c7 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 00 c7 c7 c7 c7 c7 c7 00 48 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 48 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 46 00 c7 48 c7 c7 48 46 c7 c7 c7 00 c7 c7 c7 c7 c7 00 48 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 c7 c7 c7 00 c7 00 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 c7 c7 46 c7 c7 c7 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 ff c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 48 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 00 00 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 00 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 48 c7 c7 00 c7 00 c7 c7 00 1a c7 46 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 1a c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 c7 46 c7 c7 48 c7 c7 c7 00 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 00 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 c7 c7 00 c7 c7 c7 c7 c7 c7 00 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 48 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 ff 00 c7 c7 c7 c7 00 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 00 46 c7 c7 c7 c7 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 00 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 00 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 46 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 ff 1a c7 c7 46 c7 c7 c7 c7 46 c7 49 c7 c7 c7 46 c7 c7 c7 c7 00 c7 00 c7 c7 c7 c7 c7 c7 c7 00 c7 48 c7 46 c7 c7 c7 c7 c7 c7 c7 c7 00 c7 c7 c7 1a
*/
