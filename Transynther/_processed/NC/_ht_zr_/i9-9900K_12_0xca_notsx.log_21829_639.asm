.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x4b02, %rsi
lea addresses_D_ht+0x16e82, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $86, %rcx
rep movsw
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x1c82, %rax
nop
nop
nop
nop
nop
and $18506, %r14
movups (%rax), %xmm6
vpextrq $1, %xmm6, %rdi
nop
sub $47933, %r14
lea addresses_WC_ht+0x19722, %rsi
lea addresses_D_ht+0x17482, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x1ee02, %rax
nop
nop
nop
nop
cmp %r9, %r9
movups (%rax), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
add $49311, %r9
lea addresses_normal_ht+0xbc02, %r9
inc %rsi
movw $0x6162, (%r9)
nop
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x1da82, %rsi
lea addresses_WT_ht+0x19c62, %rdi
clflush (%rsi)
nop
nop
nop
inc %r9
mov $58, %rcx
rep movsb
nop
and %rdi, %rdi
lea addresses_A_ht+0x1be54, %rdi
nop
nop
nop
add $8492, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm3, (%rdi)
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x8482, %rsi
lea addresses_D_ht+0x1bc82, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
cmp $64099, %r11
mov $117, %rcx
rep movsw
nop
nop
sub $61372, %rbp
lea addresses_WT_ht+0x8a82, %r9
nop
nop
nop
nop
inc %rcx
movb $0x61, (%r9)
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0x82c2, %rsi
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)

// Exception!!!
nop
nop
nop
mov (0), %rbx
nop
nop
nop
nop
nop
cmp $30144, %r8

// Load
lea addresses_WC+0xe322, %rcx
nop
nop
nop
nop
nop
cmp %r14, %r14
mov (%rcx), %r8d
nop
nop
nop
and $21, %rsi

// Store
lea addresses_WC+0x174c2, %rbx
nop
sub $45762, %r12
movw $0x5152, (%rbx)
nop
cmp %r15, %r15

// Faulty Load
mov $0x51c3230000000482, %r14
cmp %rsi, %rsi
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'46': 1172, '44': 4656, '48': 10459, '47': 253, '00': 5289}
48 44 00 48 44 48 00 44 48 00 48 46 00 46 48 48 48 46 44 44 48 00 46 48 48 44 00 44 00 48 00 48 46 48 46 48 00 44 48 48 44 48 48 44 00 48 00 44 48 48 44 48 00 00 48 44 48 48 00 48 48 44 48 48 44 48 48 44 48 00 47 48 48 48 48 00 48 48 48 44 48 48 48 00 00 00 48 00 48 48 00 48 48 47 00 48 00 48 47 48 44 48 00 00 48 48 48 00 44 48 48 00 48 00 00 48 48 00 48 46 00 00 48 00 48 46 48 44 48 00 44 00 44 48 44 48 48 44 48 48 44 48 48 44 00 48 48 48 48 00 00 00 48 48 48 46 48 00 46 48 48 44 00 44 48 48 44 00 48 48 48 00 00 48 00 48 48 00 48 48 00 00 48 00 48 00 44 48 44 48 48 47 48 00 48 48 48 44 48 00 44 00 48 48 48 00 48 48 00 00 48 00 00 48 48 44 48 48 44 00 48 48 48 48 44 48 44 48 44 48 00 00 48 00 44 48 48 44 48 48 48 46 48 00 48 00 48 46 48 44 44 48 00 00 48 48 48 48 00 00 48 48 48 44 48 44 48 00 00 48 00 48 46 48 44 48 00 00 48 48 00 48 48 00 47 48 48 48 46 44 44 48 48 48 48 00 48 48 48 44 48 48 48 48 48 44 48 00 00 48 44 00 44 44 48 48 00 48 48 48 44 48 48 44 48 00 48 48 44 44 48 00 00 44 00 44 48 48 48 48 48 44 48 00 46 48 00 44 46 44 48 44 46 00 48 00 44 46 48 44 48 00 00 48 00 44 00 44 44 48 00 00 44 48 44 44 48 48 44 00 48 44 48 00 46 48 48 48 00 48 44 48 00 46 48 48 48 48 48 44 48 00 00 48 00 44 48 48 44 48 00 47 48 00 48 00 48 48 48 48 44 48 48 44 48 44 48 48 44 48 48 46 48 00 44 00 44 48 44 48 00 00 48 00 44 48 48 44 48 48 44 00 48 00 44 00 44 00 48 46 00 48 00 44 48 48 44 48 00 44 48 48 44 47 48 00 48 00 48 44 48 00 00 48 46 48 44 48 47 48 48 00 48 00 44 48 48 48 44 48 48 48 48 46 48 48 48 44 48 48 00 48 00 48 44 00 44 48 44 48 00 48 48 00 44 00 44 44 48 48 46 48 00 44 00 48 48 46 00 44 48 00 00 48 00 44 00 44 48 44 48 46 00 44 00 48 00 48 44 48 00 48 48 44 00 48 00 48 46 48 44 48 00 47 48 00 44 00 48 48 48 48 44 48 00 48 44 00 44 44 48 00 48 48 48 44 48 48 44 48 48 00 48 00 44 48 48 44 48 00 00 48 48 48 48 48 48 46 00 00 48 00 48 48 48 44 48 48 44 48 48 46 48 00 44 48 44 48 44 48 00 48 48 44 00 44 48 48 48 44 48 48 44 48 00 48 46 44 00 48 00 48 48 48 44 48 48 44 48 44 00 48 00 00 48 00 44 48 48 44 48 00 48 48 00 44 48 48 00 44 00 44 48 48 00 47 48 48 44 48 48 44 48 00 00 48 00 48 00 44 48 44 48 48 48 48 44 46 48 00 44 00 48 48 48 48 44 48 48 48 48 00 48 00 48 44 48 00 48 46 48 48 48 48 48 44 44 48 00 00 44 00 44 44 00 48 44 48 48 44 48 00 00 48 44 48 48 44 48 00 00 44 48 48 48 48 44 48 48 48 46 48 44 48 00 00 48 00 44 46 48 44 48 48 44 47 48 00 44 48 48 44 48 48 44 48 00 00 48 00 44 00 48 44 48 48 44 46 48 44 48 00 46 48 44 00 44 48 44 48 00 48 00 48 00 48 00 44 00 48 48 44 48 00 47 48 00 48 48 44 00 00 48 48 48 00 00 48 00 44 00 44 48 44 44 48 48 00 48 48 44 00 44 44 48 00 46 48 00 44 48 48 44 48 48 44 48 48 44 00 44 00 00 00 47 48 00 48 00 48 44 48 48 00 48 48 48 44 48 00 00 48 00 48 48 48 46 48 48 48 48 44 44 48 00 48 44 48 48 44 48 00 48 44 48 48 44 48 00 48 00 48 44 48 48 44 48 48 46 48 48 48 48 48 44 48 46 46 48 00 44 00 44 44 48 00 00 48 48 48 48 48 00 48 48 00 47 48 00 44 48 48 44 48 00 44 48 48 47 48 48 48 48 48 44 48 00 46 48 00
*/
