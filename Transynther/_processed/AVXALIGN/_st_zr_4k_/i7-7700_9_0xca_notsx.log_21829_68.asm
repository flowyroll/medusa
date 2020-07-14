.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x3c41, %rsi
lea addresses_WT_ht+0x2c61, %rdi
nop
nop
nop
nop
nop
xor $12137, %r10
mov $0, %rcx
rep movsl
dec %rdx
lea addresses_A_ht+0xe341, %r15
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %r15
vmovntdq %ymm2, (%r15)
nop
and %rcx, %rcx
lea addresses_A_ht+0x18339, %r15
nop
nop
nop
cmp %rbx, %rbx
movups (%r15), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x10e59, %rsi
lea addresses_WT_ht+0x10eb1, %rdi
nop
sub $42055, %rbp
mov $82, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x6b41, %rsi
lea addresses_normal_ht+0xd7ad, %rdi
clflush (%rsi)
nop
and $65261, %r15
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x15db9, %rbp
nop
nop
nop
mfence
movb (%rbp), %r15b
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x5741, %rbx
nop
nop
nop
nop
sub %r15, %r15
movw $0x6162, (%rbx)
nop
nop
nop
nop
cmp $14138, %rsi
lea addresses_normal_ht+0x1621, %r15
lfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r15)
nop
nop
lfence
lea addresses_A_ht+0x7341, %r15
nop
xor $28167, %rbp
movb (%r15), %bl
nop
and $21204, %r15
lea addresses_A_ht+0x8551, %rbx
nop
nop
and $23935, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rbx)
sub $35710, %rbx
lea addresses_D_ht+0x16021, %rcx
nop
nop
nop
xor %rdi, %rdi
movb (%rcx), %r10b
nop
nop
nop
nop
nop
add $5965, %rbp
lea addresses_A_ht+0x6e41, %r10
clflush (%r10)
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
sub %rbx, %rbx
lea addresses_WT_ht+0xab41, %rsi
lea addresses_D_ht+0xac81, %rdi
nop
nop
nop
sub $33529, %rbp
mov $32, %rcx
rep movsw
nop
cmp $64609, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rbx

// Load
lea addresses_A+0x15141, %r15
clflush (%r15)
nop
nop
nop
nop
and $46138, %r11
mov (%r15), %ebx
nop
nop
add %r15, %r15

// Load
mov $0x941, %r9
nop
nop
nop
nop
nop
cmp $23406, %r12
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
and $64632, %r12

// Store
lea addresses_PSE+0x1741, %rbx
nop
nop
nop
nop
nop
sub $29646, %r11
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
nop
nop
xor $37946, %rbx

// Load
lea addresses_normal+0x1a741, %r12
nop
nop
nop
nop
nop
and $29162, %r11
mov (%r12), %bx
nop
nop
nop
nop
nop
xor %r12, %r12

// Load
lea addresses_D+0x14541, %r9
nop
nop
nop
nop
add %r15, %r15
movb (%r9), %al
nop
nop
add %r11, %r11

// Store
mov $0xf41, %r15
inc %rbx
movw $0x5152, (%r15)

// Exception!!!
mov (0), %r9
nop
nop
nop
nop
add $2654, %rax

// Store
lea addresses_PSE+0x1da41, %r15
nop
nop
nop
nop
nop
add $30711, %rbp
movw $0x5152, (%r15)
nop
nop
nop
inc %r15

// Store
lea addresses_US+0x15941, %r12
clflush (%r12)
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%r12)
cmp $25423, %r11

// Faulty Load
lea addresses_normal+0x1a741, %rbx
cmp $50981, %r12
movaps (%rbx), %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'00': 641, '58': 21188}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58
*/
