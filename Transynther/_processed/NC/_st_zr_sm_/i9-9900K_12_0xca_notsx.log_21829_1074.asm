.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x826f, %rdx
nop
dec %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %rdx
vmovaps %ymm0, (%rdx)
nop
nop
nop
sub $33888, %rbp
lea addresses_D_ht+0x366f, %rdx
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x9e2f, %rsi
lea addresses_WC_ht+0x4613, %rdi
nop
add %r11, %r11
mov $78, %rcx
rep movsl
dec %r11
lea addresses_WC_ht+0x1ba4f, %rsi
lea addresses_UC_ht+0x1558f, %rdi
nop
nop
nop
nop
cmp $63870, %r10
mov $107, %rcx
rep movsb
nop
cmp $19392, %rax
lea addresses_WT_ht+0x722f, %rsi
lea addresses_D_ht+0xcef, %rdi
clflush (%rdi)
nop
nop
cmp $62224, %r10
mov $33, %rcx
rep movsw
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x316f, %rbp
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rbp), %r10
nop
nop
add $4414, %rcx
lea addresses_D_ht+0xe43f, %rsi
lea addresses_normal_ht+0x1619f, %rdi
nop
nop
and %r11, %r11
mov $19, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1ed6f, %r11
nop
inc %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
and $42015, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x1216f, %rsi
lea addresses_PSE+0xc32f, %rdi
mfence
mov $10, %rcx
rep movsb
nop
nop
and %r10, %r10

// REPMOV
lea addresses_WT+0x1b16f, %rsi
lea addresses_PSE+0x1eeef, %rdi
nop
nop
add %r8, %r8
mov $98, %rcx
rep movsw
nop
nop
nop
add $8202, %r8

// REPMOV
mov $0x56f, %rsi
lea addresses_US+0x6a57, %rdi
xor %r10, %r10
mov $0, %rcx
rep movsb
add %rsi, %rsi

// REPMOV
lea addresses_normal+0xdf6f, %rsi
lea addresses_D+0x22b1, %rdi
nop
nop
sub %r14, %r14
mov $43, %rcx
rep movsb
nop
nop
dec %r14

// Store
lea addresses_WT+0x772f, %rcx
nop
add %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm3
and $0xffffffffffffffc0, %rcx
movaps %xmm3, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WT+0x6fef, %rbx
nop
add $54076, %r10
mov $0x5152535455565758, %r8
movq %r8, (%rbx)
nop
add %r8, %r8

// Store
mov $0x2cd081000000096f, %rbx
nop
nop
nop
nop
and %r14, %r14
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
inc %r14

// Faulty Load
mov $0x2cd081000000096f, %rsi
nop
sub %rbx, %rbx
movb (%rsi), %r14b
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_PSE'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_P'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_US'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'00': 184, '52': 21619, '39': 26}
52 39 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 39 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 39 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
