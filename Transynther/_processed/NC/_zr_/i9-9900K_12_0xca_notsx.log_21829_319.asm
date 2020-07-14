.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x144ba, %rbp
xor $7461, %rbx
mov (%rbp), %r10d
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x8eea, %rax
nop
and $16677, %r10
movb $0x61, (%rax)
nop
and %rbp, %rbp
lea addresses_UC_ht+0x9aba, %rbx
nop
nop
inc %rax
mov (%rbx), %edi
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x12c06, %rbx
nop
nop
nop
xor %rcx, %rcx
mov (%rbx), %edi
nop
nop
nop
add $719, %r10
lea addresses_normal_ht+0xa2fa, %rsi
lea addresses_WT_ht+0xdfc2, %rdi
nop
nop
nop
nop
lfence
mov $80, %rcx
rep movsl
nop
nop
nop
nop
add $19859, %rbp
lea addresses_WC_ht+0x15bba, %rsi
lea addresses_UC_ht+0xdaba, %rdi
nop
nop
nop
nop
add $45388, %r14
mov $76, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x119b2, %rsi
lea addresses_WC_ht+0x6cba, %rdi
nop
dec %r10
mov $49, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x5fc4, %rsi
lea addresses_WT_ht+0x155ba, %rdi
nop
nop
nop
sub $3878, %r14
mov $105, %rcx
rep movsw
cmp $64685, %rsi
lea addresses_A_ht+0x13bba, %r10
sub $53177, %rcx
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
sub $33049, %rdi
lea addresses_A_ht+0x6aaa, %rcx
nop
nop
sub $25204, %rdi
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x3754, %rcx
nop
add $27192, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x170ba, %rdi
nop
add $23135, %rsi
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %rax
nop
cmp %rax, %rax
lea addresses_A_ht+0xdcba, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $7869, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rdi
push %rsi

// Load
lea addresses_PSE+0x1334a, %r11
nop
sub %r14, %r14
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WT+0x172ba, %rdi
nop
nop
nop
nop
and %rsi, %rsi
movw $0x5152, (%rdi)
nop
nop
xor $48852, %r11

// Store
lea addresses_WC+0x134ba, %r8
nop
nop
nop
xor $43864, %r15
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
nop
and %rbp, %rbp

// Load
lea addresses_A+0x1ab0a, %r8
nop
nop
nop
nop
cmp $54716, %rsi
vmovups (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
xor %rbp, %rbp

// Store
lea addresses_RW+0x103a, %r14
add %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovntdq %ymm6, (%r14)
nop
nop
and %rbp, %rbp

// Load
lea addresses_US+0xca76, %r15
clflush (%r15)
nop
nop
nop
nop
add %rbp, %rbp
mov (%r15), %di
nop
nop
nop
nop
and $46379, %r14

// Faulty Load
mov $0x3e794d0000000cba, %rbp
nop
nop
nop
nop
and $25292, %r11
movb (%rbp), %r8b
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
