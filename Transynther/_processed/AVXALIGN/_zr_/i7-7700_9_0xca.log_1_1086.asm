.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9cb5, %r12
clflush (%r12)
nop
nop
nop
sub %r13, %r13
movb (%r12), %r14b
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x3ec5, %r14
nop
nop
nop
nop
sub %r15, %r15
mov (%r14), %r10d
nop
xor $20215, %r14
lea addresses_WT_ht+0xc3f5, %r14
nop
nop
sub %r8, %r8
mov (%r14), %r10w
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x35, %r14
nop
sub %rbp, %rbp
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
inc %r14
lea addresses_UC_ht+0xff5, %r14
inc %r15
movl $0x61626364, (%r14)
nop
cmp $34169, %r8
lea addresses_normal_ht+0x18d25, %r14
clflush (%r14)
nop
dec %rbp
movb (%r14), %r10b
dec %r12
lea addresses_WC_ht+0x6ab5, %rsi
lea addresses_UC_ht+0x19db5, %rdi
nop
nop
nop
dec %r12
mov $36, %rcx
rep movsb
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x12915, %r12
nop
dec %r13
mov (%r12), %ecx
nop
xor $12706, %rbp
lea addresses_WC_ht+0x11eb5, %r14
nop
nop
nop
nop
sub $50572, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x18e35, %r8
clflush (%r8)
nop
nop
nop
cmp $9290, %r13
mov (%r8), %r12
and %r10, %r10
lea addresses_UC_ht+0xe635, %rsi
lea addresses_UC_ht+0xb2b5, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $97, %rcx
rep movsw
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x1c3f5, %r15
nop
nop
nop
inc %r8
mov $0x6162636465666768, %r12
movq %r12, (%r15)
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x8751, %r14
nop
nop
nop
sub %r8, %r8
movl $0x61626364, (%r14)
nop
nop
add $5138, %rbp
lea addresses_WT_ht+0xf685, %rsi
lea addresses_D_ht+0xb085, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $10, %rcx
rep movsw
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0xd481, %r11
sub $36817, %r10
movl $0x51525354, (%r11)
nop
nop
cmp $3089, %r11

// Store
lea addresses_D+0x14f11, %rdx
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
nop
xor %r11, %r11

// Load
mov $0xf910c0000000d43, %r10
nop
nop
nop
add $45664, %r9
movb (%r10), %dl
nop
nop
add $35432, %r10

// Store
lea addresses_D+0x14195, %r9
nop
nop
xor $6522, %rcx
movw $0x5152, (%r9)
xor $54465, %r9

// Store
mov $0xab5, %rdi
nop
nop
nop
nop
add $20568, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
xor $18315, %r9

// Store
lea addresses_UC+0x16b85, %r10
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
and %rdx, %rdx

// Load
mov $0x7a68900000000e95, %rcx
nop
nop
nop
nop
nop
xor $57267, %r11
mov (%rcx), %r9d
nop
nop
nop
nop
nop
cmp $15485, %r10

// Store
lea addresses_RW+0x6df5, %rcx
and %r11, %r11
movb $0x51, (%rcx)
nop
nop
nop
nop
xor $12276, %r10

// Store
mov $0x7c96a000000098f, %rdi
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movntdq %xmm0, (%rdi)
nop
nop
nop
cmp $13444, %rcx

// Faulty Load
lea addresses_WT+0x6ab5, %rdx
nop
nop
nop
nop
nop
add $30785, %r9
movaps (%rdx), %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'00': 1}
00
*/
