.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2f3b, %rsi
lea addresses_normal_ht+0x15d85, %rdi
clflush (%rdi)
nop
nop
nop
add $39450, %rbp
mov $44, %rcx
rep movsw
nop
nop
nop
add $52362, %r9
lea addresses_normal_ht+0xc4d7, %r12
nop
dec %r8
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
cmp $58390, %r12
lea addresses_WT_ht+0x19c13, %r9
nop
nop
nop
nop
inc %r12
movw $0x6162, (%r9)
nop
add %r9, %r9
lea addresses_WT_ht+0x53b, %rsi
lea addresses_UC_ht+0x3dab, %rdi
xor %r15, %r15
mov $18, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x953b, %rdi
nop
nop
xor $29719, %rbp
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
and $2024, %rsi
lea addresses_A_ht+0x1ba43, %rsi
lea addresses_D_ht+0xb667, %rdi
nop
and $23730, %rbp
mov $26, %rcx
rep movsb
nop
nop
dec %r15
lea addresses_WT_ht+0x1398b, %rbp
dec %rdi
mov (%rbp), %rsi
nop
nop
inc %rdi
lea addresses_WT_ht+0x1be17, %r9
nop
add %r15, %r15
mov (%r9), %rdi
xor %r15, %r15
lea addresses_UC_ht+0x1a53b, %r9
nop
dec %rsi
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
add $36808, %r15
lea addresses_UC_ht+0x593b, %rbp
nop
nop
nop
inc %rdi
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x9d3b, %rdi
nop
nop
nop
nop
add $38610, %r12
mov (%rdi), %r9
nop
nop
nop
add $11868, %r12
lea addresses_A_ht+0x66ff, %r12
clflush (%r12)
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %r12
movaps %xmm1, (%r12)
and $6909, %r15
lea addresses_normal_ht+0x627, %r12
add %rcx, %rcx
movups (%r12), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
nop
nop
cmp $33961, %rcx
lea addresses_UC_ht+0x113b7, %r9
nop
nop
nop
nop
and %rsi, %rsi
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0xdf45, %r9
nop
and $63667, %rdi
movups (%r9), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_D+0x9d3b, %rax
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rax)
nop
nop
nop
nop
nop
add $18043, %rcx

// Load
mov $0x50cf43000000043b, %r9
nop
nop
xor $25713, %rax
movups (%r9), %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
cmp $21617, %r12

// Store
lea addresses_PSE+0x7da7, %r12
nop
nop
nop
nop
nop
cmp $43890, %r9
movb $0x51, (%r12)
cmp $424, %r9

// Load
lea addresses_WC+0x1b13b, %rax
sub %rdx, %rdx
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
and $62313, %rcx

// Load
lea addresses_PSE+0x53b, %r12
clflush (%r12)
add %r11, %r11
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
cmp $22345, %rcx

// Faulty Load
lea addresses_US+0x53b, %rdx
nop
nop
sub $52737, %r11
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'46': 4, 'a8': 2339, '47': 66, '00': 328, 'a0': 1, 'a9': 5233, '49': 1, 'aa': 5418, 'ab': 7535, 'ff': 904}
a0 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 ff a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 47 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff ff a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 47 a8 a8 a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 00 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 00 a8 a8 ff a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 47 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff ff a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 ff a8 00 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 00 ff a8 a8 ff a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 47 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff ff a8 00 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 ff ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 ff ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 00 a8 ff a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff ff a8 a8 a8 a8 a8 a8 a8 ff a8 ff a8 47 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 00 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 a8 a8 a8 a8 a8 ff a8 a8 a8 a8 ff a8 a8 a8 a8
*/
