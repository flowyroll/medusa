.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x3987, %rsi
lea addresses_normal_ht+0x3d27, %rdi
clflush (%rdi)
nop
nop
add $17468, %rbx
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $26820, %r8
lea addresses_WT_ht+0xc687, %rbp
nop
nop
nop
nop
sub %r15, %r15
movw $0x6162, (%rbp)
inc %rbp
lea addresses_D_ht+0xdb87, %rbx
cmp $28697, %rcx
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
add $21834, %rcx
lea addresses_WT_ht+0xdc87, %rsi
nop
nop
sub $41055, %r15
movb (%rsi), %r8b
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x1d87, %rbx
nop
nop
nop
nop
nop
and $35123, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%rbx)
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x186f7, %r15
nop
nop
nop
nop
cmp %rbp, %rbp
movups (%r15), %xmm2
vpextrq $0, %xmm2, %rcx
dec %rcx
lea addresses_normal_ht+0x1d287, %r8
nop
nop
nop
nop
nop
xor $55842, %rbp
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
add $51055, %rbp
lea addresses_normal_ht+0xb7d7, %rsi
lea addresses_WC_ht+0xa051, %rdi
nop
nop
nop
and %r10, %r10
mov $67, %rcx
rep movsl
and %rdi, %rdi
lea addresses_UC_ht+0x18787, %rcx
nop
nop
nop
nop
inc %r10
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x14987, %rdi
nop
inc %rsi
mov (%rdi), %ecx
nop
and %r8, %r8
lea addresses_normal_ht+0x19f87, %rdi
nop
nop
sub %rsi, %rsi
mov (%rdi), %ecx
sub $63279, %r10
lea addresses_WT_ht+0x8187, %rsi
lea addresses_WT_ht+0x8817, %rdi
nop
nop
xor $6170, %r15
mov $78, %rcx
rep movsq
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x11047, %rbx
nop
nop
nop
nop
cmp %r8, %r8
mov (%rbx), %r10
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xa387, %r10
clflush (%r10)
nop
sub $8299, %rbp
movb $0x61, (%r10)
add %r10, %r10
lea addresses_WC_ht+0x18ac7, %rcx
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
add $40076, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdx

// Store
lea addresses_RW+0x1d88f, %r15
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
nop
add $10485, %r11

// Store
lea addresses_US+0x11e07, %r12
clflush (%r12)
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
nop
add %r10, %r10

// Load
mov $0xb71, %r10
nop
nop
nop
dec %r9
mov (%r10), %r12
nop
nop
nop
dec %rcx

// Load
lea addresses_normal+0x1eb6a, %r9
nop
nop
nop
nop
nop
and $42045, %r10
mov (%r9), %r12d
xor $6999, %r11

// Load
lea addresses_D+0x18f87, %r15
nop
nop
nop
nop
nop
xor $43732, %r12
movups (%r15), %xmm5
vpextrq $0, %xmm5, %rcx
sub %r9, %r9

// Load
lea addresses_D+0xdf87, %r9
nop
nop
nop
dec %r10
mov (%r9), %dx
nop
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_D+0xdf87, %r9
nop
nop
nop
nop
cmp $22807, %r15
movb (%r9), %cl
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'36': 387}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
