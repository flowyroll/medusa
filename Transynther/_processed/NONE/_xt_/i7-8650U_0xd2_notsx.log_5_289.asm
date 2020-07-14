.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1572f, %rsi
lea addresses_UC_ht+0x24f, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $108, %rcx
rep movsw
nop
and %rsi, %rsi
lea addresses_D_ht+0x1e245, %rcx
nop
sub %rax, %rax
mov (%rcx), %r11d
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0xeb4f, %rsi
lea addresses_UC_ht+0x5a87, %rdi
nop
nop
xor $49032, %r9
mov $18, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $39799, %rsi
lea addresses_normal_ht+0x1c5cf, %rdi
dec %rbp
mov (%rdi), %cx
nop
dec %rbp
lea addresses_normal_ht+0x1644f, %rsi
lea addresses_WC_ht+0x1744f, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $48, %rcx
rep movsw
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x150cf, %r9
nop
add %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
mfence
lea addresses_UC_ht+0x172e9, %rbx
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
nop
xor $44438, %rdi
lea addresses_WC_ht+0x1bdcf, %r11
nop
nop
sub $60425, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
add $31966, %rbx
lea addresses_normal_ht+0x97ff, %rbp
nop
nop
and %r11, %r11
movl $0x61626364, (%rbp)
nop
add $5807, %rbp
lea addresses_WC_ht+0xc4f, %rsi
lea addresses_normal_ht+0x9107, %rdi
clflush (%rdi)
nop
nop
nop
add %rbx, %rbx
mov $8, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x3257, %rbx
nop
nop
nop
add $65272, %rdi
movb $0x61, (%rbx)
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0xe54f, %rbp
nop
nop
nop
inc %rcx
mov (%rbp), %si
nop
nop
nop
nop
nop
and $2778, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x1a607, %rsi
lea addresses_UC+0x1e04f, %rdi
nop
nop
nop
xor $14570, %rax
mov $102, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence

// Store
lea addresses_RW+0x1c44f, %r13
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
nop
add $42589, %rax

// Store
mov $0x44f, %rcx
nop
dec %r12
movw $0x5152, (%rcx)
nop
xor $58707, %r12

// Store
lea addresses_US+0xe4f, %r10
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r10)
xor %r10, %r10

// Store
lea addresses_PSE+0x1724f, %rax
xor %rsi, %rsi
movb $0x51, (%rax)
nop
nop
nop
nop
inc %r12

// Store
lea addresses_US+0x19227, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp $5929, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movntdq %xmm6, (%r10)
nop
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_normal+0x1bc4f, %r12
nop
and $45279, %rsi
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'34': 5}
34 34 34 34 34
*/
