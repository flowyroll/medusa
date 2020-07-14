.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x25bc, %rsi
lea addresses_WC_ht+0x13928, %rdi
nop
nop
nop
and $8817, %r9
mov $60, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $42505, %r8
lea addresses_WC_ht+0xc928, %r9
nop
nop
sub %r10, %r10
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x14f67, %rsi
lea addresses_WT_ht+0x11802, %rdi
nop
nop
nop
inc %rbp
mov $15, %rcx
rep movsq
sub %rcx, %rcx
lea addresses_normal_ht+0x2128, %rbp
nop
nop
nop
xor $29599, %r8
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x6928, %r10
nop
nop
nop
nop
sub $45547, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r10)
nop
and $45267, %rdi
lea addresses_WT_ht+0xbd28, %rsi
lea addresses_A_ht+0xe96f, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $47190, %rdx
lea addresses_WC_ht+0xaa28, %rsi
lea addresses_WT_ht+0x19168, %rdi
nop
nop
nop
nop
nop
mfence
mov $4, %rcx
rep movsq
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0x569, %rsi
lea addresses_A_ht+0x11b28, %rdi
sub $63918, %rbp
mov $115, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $40684, %rdx
lea addresses_WT_ht+0xa668, %rsi
lea addresses_WT_ht+0x10c28, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $35, %rcx
rep movsw
and %rbp, %rbp
lea addresses_A_ht+0x15128, %rsi
lea addresses_WC_ht+0xdfe0, %rdi
nop
nop
nop
sub $5391, %r10
mov $37, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x328, %r8
clflush (%r8)
nop
nop
nop
cmp $38532, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
sub $39636, %r9
lea addresses_WT_ht+0x1128, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rcx)
nop
inc %r8
lea addresses_WT_ht+0x5b48, %r8
sub %rdi, %rdi
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
add $8544, %r8
lea addresses_D_ht+0x11728, %r10
sub $56647, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rax

// Store
lea addresses_WC+0x5628, %rax
nop
nop
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
lfence

// Store
lea addresses_PSE+0x68e0, %r11
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r11)
nop
nop
and %rax, %rax

// Store
lea addresses_WT+0xb528, %r11
nop
nop
nop
nop
sub $44044, %r15
movw $0x5152, (%r11)
nop
nop
nop
nop
dec %r11

// Faulty Load
lea addresses_RW+0x14928, %r15
nop
nop
nop
nop
nop
cmp $32745, %r12
mov (%r15), %ax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
