.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1739d, %rsi
nop
nop
nop
nop
cmp $56150, %r12
movw $0x6162, (%rsi)
xor %rdi, %rdi
lea addresses_D_ht+0x1967d, %rsi
lea addresses_A_ht+0x190ad, %rdi
nop
nop
nop
add %r10, %r10
mov $102, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x6a7d, %rsi
lea addresses_A_ht+0x4cf5, %rdi
nop
sub $12334, %r10
mov $59, %rcx
rep movsl
nop
nop
cmp $3875, %r12
lea addresses_D_ht+0xd99d, %rcx
nop
and %r12, %r12
movb $0x61, (%rcx)
nop
nop
xor $10944, %r10
lea addresses_WT_ht+0x9e7d, %r8
nop
sub $6472, %rsi
mov (%r8), %di
xor %rdi, %rdi
lea addresses_WC_ht+0x1067d, %r10
nop
nop
nop
nop
nop
xor $55980, %rcx
movl $0x61626364, (%r10)
nop
nop
nop
and $22904, %rsi
lea addresses_WC_ht+0x58bd, %rcx
nop
add %r8, %r8
mov (%rcx), %edi
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x16efd, %rcx
nop
nop
nop
nop
nop
cmp $47927, %r11
movb (%rcx), %r8b
nop
xor $46482, %rsi
lea addresses_WT_ht+0x66fd, %r11
nop
cmp %rcx, %rcx
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
and $51770, %rdi
lea addresses_D_ht+0x177d, %rsi
lea addresses_UC_ht+0x10e7b, %rdi
nop
nop
cmp %r12, %r12
mov $124, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1c6fd, %rsi
lea addresses_A_ht+0x16f6d, %rdi
clflush (%rsi)
cmp $16458, %r8
mov $84, %rcx
rep movsq
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rsi

// Load
lea addresses_D+0xfafd, %rcx
nop
xor $12026, %r14
mov (%rcx), %r10
nop
nop
nop
sub $15913, %r10

// Store
lea addresses_D+0x1067d, %rsi
nop
nop
nop
nop
nop
add $45479, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
cmp $64137, %rcx

// Load
lea addresses_RW+0xa7d, %r11
nop
nop
nop
nop
nop
and $55191, %rbx
movb (%r11), %cl
nop
nop
sub %rcx, %rcx

// Store
lea addresses_PSE+0x148fd, %r14
cmp $35357, %r13
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_WC+0x14efd, %r14
clflush (%r14)
nop
nop
nop
nop
add %rsi, %rsi
movb (%r14), %r10b
nop
nop
nop
and %r13, %r13

// Store
lea addresses_D+0x1ac2d, %rcx
nop
nop
nop
cmp %r10, %r10
movl $0x51525354, (%rcx)
nop
nop
nop
xor $50261, %r11

// Store
mov $0x67d2ea0000000e7d, %r13
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r13)
xor %rbx, %rbx

// Store
lea addresses_RW+0x427d, %r13
cmp $44762, %rcx
movl $0x51525354, (%r13)
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_D+0x1067d, %rbx
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
add $42281, %rsi

// Faulty Load
lea addresses_D+0x1067d, %rbx
xor %r14, %r14
vmovntdqa (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'00': 4, '58': 3}
58 00 00 58 00 58 00
*/
