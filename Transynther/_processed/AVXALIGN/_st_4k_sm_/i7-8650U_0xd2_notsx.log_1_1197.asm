.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe191, %r14
nop
nop
nop
nop
mfence
movl $0x61626364, (%r14)
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xca95, %r11
nop
nop
nop
nop
nop
sub %r8, %r8
movb (%r11), %al
nop
nop
nop
sub $19302, %rsi
lea addresses_D_ht+0x10935, %r14
nop
nop
nop
nop
xor %rax, %rax
mov (%r14), %r11
nop
nop
add $57193, %r14
lea addresses_normal_ht+0xd935, %rsi
lea addresses_WT_ht+0x7795, %rdi
cmp $37669, %r8
mov $67, %rcx
rep movsb
nop
sub %r14, %r14
lea addresses_WC_ht+0x196e2, %rsi
lea addresses_WT_ht+0x182ed, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $105, %rcx
rep movsb
nop
add %rax, %rax
lea addresses_WT_ht+0x15a95, %r12
nop
add %rax, %rax
movb (%r12), %r11b
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x15695, %r14
and $58406, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r14)
add $5261, %r8
lea addresses_A_ht+0xfeb, %r8
and %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm7
movups %xmm7, (%r8)
add %rcx, %rcx
lea addresses_WC_ht+0xd895, %rsi
lea addresses_D_ht+0x10a21, %rdi
nop
nop
nop
xor $10163, %r12
mov $45, %rcx
rep movsb
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0xfe95, %r8
nop
nop
cmp %r11, %r11
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
and $36917, %r12
lea addresses_D_ht+0x1cbb7, %r11
nop
nop
nop
nop
cmp $61853, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%r11)
dec %rdi
lea addresses_UC_ht+0x1f15, %rsi
lea addresses_A_ht+0xd845, %rdi
nop
nop
nop
inc %r8
mov $56, %rcx
rep movsb
nop
nop
xor $24079, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdx

// Load
mov $0x4735be0000000915, %rdx
nop
nop
nop
nop
and %rbx, %rbx
mov (%rdx), %r10
nop
nop
and $25372, %rbx

// Load
lea addresses_D+0x7515, %rcx
nop
dec %r15
movb (%rcx), %dl
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_PSE+0x13a95, %rbx
nop
nop
nop
nop
inc %rcx
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
add $3779, %rdx

// Store
mov $0x295, %r8
inc %rdx
movw $0x5152, (%r8)
nop
cmp $51606, %rdx

// Load
lea addresses_A+0x16315, %r10
nop
nop
nop
inc %rbx
mov (%r10), %r8d
sub %rbx, %rbx

// Store
lea addresses_WC+0x1efa5, %rdx
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
add $53565, %r14

// Faulty Load
lea addresses_PSE+0x13a95, %r8
nop
and $55163, %r14
mov (%r8), %r10d
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'54': 1}
54
*/
