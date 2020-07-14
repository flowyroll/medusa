.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1da5d, %r11
nop
nop
nop
nop
sub %r12, %r12
movb $0x61, (%r11)
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x11401, %rdx
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
add $20751, %rcx
lea addresses_normal_ht+0xb89d, %rsi
lea addresses_WT_ht+0xe8dd, %rdi
nop
add %rbp, %rbp
mov $89, %rcx
rep movsb
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1ae2d, %r11
nop
nop
nop
nop
xor $34739, %rdx
mov (%r11), %r13d
nop
nop
nop
sub $54258, %rcx
lea addresses_UC_ht+0x71bd, %rcx
clflush (%rcx)
nop
nop
nop
and %r11, %r11
movb $0x61, (%rcx)
and $54844, %rdi
lea addresses_normal_ht+0x1c75d, %rdx
nop
nop
nop
nop
xor $49276, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x16b5d, %rsi
lea addresses_WC_ht+0xe25d, %rdi
nop
inc %rbp
mov $109, %rcx
rep movsb
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1325d, %rsi
nop
nop
nop
sub %r12, %r12
movl $0x61626364, (%rsi)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x17cfd, %rsi
lea addresses_D_ht+0xa5d, %rdi
clflush (%rdi)
and %rdx, %rdx
mov $35, %rcx
rep movsb
nop
nop
nop
xor $25772, %r12
lea addresses_WT_ht+0xc41d, %rsi
nop
nop
nop
cmp %rbp, %rbp
mov (%rsi), %r12
cmp $62573, %rbp
lea addresses_A_ht+0x1d5d, %rsi
lea addresses_WC_ht+0x1da85, %rdi
inc %r12
mov $98, %rcx
rep movsw
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0x12bad, %r11
sub $18135, %r12
mov (%r11), %di
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x68dd, %r13
nop
add %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r13)
nop
nop
xor $32498, %r13
lea addresses_normal_ht+0x895d, %rsi
lea addresses_normal_ht+0x1103b, %rdi
nop
cmp %r13, %r13
mov $85, %rcx
rep movsq
add %rbp, %rbp
lea addresses_UC_ht+0x1a85d, %rdi
xor $63284, %rbp
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0x1aa5d, %r15
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
nop
add $38408, %r9

// Faulty Load
lea addresses_PSE+0x13a5d, %rcx
nop
nop
nop
nop
sub %r8, %r8
movntdqa (%rcx), %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 147, '5f': 1929, '58': 19753}
58 58 58 58 58 5f 58 5f 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 5f 5f 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 5f 5f 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 5f 58 58 58 58 58 58 58 5f 58 5f 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 5f 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 5f 58 58 5f 5f 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 5f 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 5f 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 5f 58 58 58 5f 5f 58 58 58 58 58 58 58 58 58 5f 58 5f 5f 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 5f 58 58 58 5f 58 58 58 5f 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 00 58 5f 58 58 58 58 00 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58
*/
