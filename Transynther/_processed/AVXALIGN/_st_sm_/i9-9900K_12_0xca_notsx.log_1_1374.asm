.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x119ee, %r15
nop
xor $39317, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
cmp $37329, %rcx
lea addresses_UC_ht+0x1e9ee, %rsi
lea addresses_UC_ht+0xfa6e, %rdi
add $43075, %rbp
mov $16, %rcx
rep movsq
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x89ee, %r12
clflush (%r12)
nop
inc %r15
movl $0x61626364, (%r12)
nop
nop
inc %rsi
lea addresses_WC_ht+0x109ee, %rsi
lea addresses_UC_ht+0x1eaa6, %rdi
nop
nop
nop
inc %r11
mov $89, %rcx
rep movsl
nop
nop
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x150d8, %r11
nop
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
xor $19712, %rdi
lea addresses_normal_ht+0x1cb6e, %rdi
inc %r12
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
sub %rbp, %rbp
lea addresses_WC_ht+0x95ce, %r12
nop
nop
nop
nop
nop
cmp $24313, %rsi
movb $0x61, (%r12)
nop
nop
nop
nop
nop
and $38478, %r15
lea addresses_A_ht+0x9dee, %r11
nop
nop
nop
sub $50099, %rcx
mov (%r11), %di
nop
xor %rbp, %rbp
lea addresses_A_ht+0xc2ee, %rsi
lea addresses_WC_ht+0x199ee, %rdi
nop
and %r14, %r14
mov $114, %rcx
rep movsl
nop
sub %r11, %r11
lea addresses_D_ht+0x160ee, %r11
nop
nop
xor %rsi, %rsi
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
xor $2395, %r14
lea addresses_UC_ht+0x115c6, %rsi
lea addresses_D_ht+0xe9ee, %rdi
cmp %r15, %r15
mov $12, %rcx
rep movsl
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x18ed0, %r14
nop
nop
nop
nop
nop
cmp $47865, %r11
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xfc0a, %rcx
nop
and $19415, %rdi
movb (%rcx), %r15b
nop
add $14336, %r15
lea addresses_A_ht+0x1800e, %r14
clflush (%r14)
nop
nop
nop
add $49297, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r14)
nop
nop
and %r12, %r12
lea addresses_WC_ht+0xa5ae, %rbp
nop
sub %r12, %r12
movups (%rbp), %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x199ee, %rcx
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
nop
nop
cmp $53671, %r14

// Store
lea addresses_WT+0x71ee, %rcx
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
xor $15281, %rcx

// Store
lea addresses_WT+0x71ee, %rdx
nop
nop
nop
dec %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)

// Exception!!!
nop
nop
mov (0), %rdi
nop
add %rax, %rax

// Store
lea addresses_RW+0x1dfbe, %rcx
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%rcx)
add $53859, %r14

// Store
lea addresses_UC+0x1e4ee, %r12
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r12)
nop
and $27464, %rax

// Faulty Load
lea addresses_WT+0x71ee, %rdx
nop
cmp $17222, %r14
mov (%rdx), %r8w
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'58': 1}
58
*/
