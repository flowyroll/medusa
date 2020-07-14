.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ecd1, %rax
nop
nop
nop
nop
nop
add $16790, %r14
mov (%rax), %r8d
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0xe51, %rsi
lea addresses_WT_ht+0x5891, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $14, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $64977, %rax
lea addresses_WC_ht+0x1a051, %rax
nop
cmp $36893, %r11
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
dec %rax
lea addresses_A_ht+0x104d1, %r11
nop
nop
nop
nop
nop
add %rax, %rax
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x4841, %rsi
nop
nop
nop
nop
nop
cmp $45412, %rax
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x1e68f, %rsi
lea addresses_UC_ht+0x12151, %rdi
nop
nop
nop
xor %r14, %r14
mov $42, %rcx
rep movsb
nop
nop
nop
nop
dec %r8
lea addresses_WC_ht+0x324b, %r14
cmp %rsi, %rsi
mov (%r14), %rdi
nop
nop
and $26752, %r14
lea addresses_A_ht+0x1aed1, %r14
clflush (%r14)
sub $8621, %r8
movw $0x6162, (%r14)
sub $19309, %rsi
lea addresses_D_ht+0x1cf99, %rsi
lea addresses_UC_ht+0xe917, %rdi
nop
nop
nop
nop
and $12630, %r8
mov $109, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $163, %rsi
lea addresses_WT_ht+0x3ad1, %r11
nop
nop
nop
nop
nop
cmp $57868, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
and $43524, %rsi
lea addresses_WT_ht+0x6a57, %rsi
lea addresses_normal_ht+0xb671, %rdi
nop
nop
nop
inc %rbx
mov $62, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x14921, %rsi
lea addresses_D_ht+0x5cd1, %rdi
nop
nop
inc %r11
mov $32, %rcx
rep movsw
add $44581, %r11
lea addresses_normal_ht+0x30d1, %rax
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rax)
sub %r14, %r14
lea addresses_WT_ht+0x154d1, %r11
nop
nop
and %r8, %r8
movb $0x61, (%r11)
xor $36282, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x128d1, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r10)
sub $5034, %rax

// Store
mov $0x7bd2d3000000011d, %rdx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%rdx)
inc %r15

// Store
lea addresses_WT+0xba71, %rcx
inc %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rcx)
cmp $24413, %rdx

// Load
lea addresses_A+0x16251, %rdi
cmp $42864, %r15
movb (%rdi), %bl
nop
nop
add $16644, %rdi

// Faulty Load
lea addresses_D+0x164d1, %r10
nop
nop
cmp %rdi, %rdi
mov (%r10), %r15w
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'36': 321}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
