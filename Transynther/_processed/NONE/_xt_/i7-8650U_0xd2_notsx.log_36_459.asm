.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x11dc0, %rsi
nop
nop
nop
nop
nop
inc %rdx
mov (%rsi), %r12d
nop
nop
nop
nop
nop
add $61635, %rbp
lea addresses_WT_ht+0x67c0, %rsi
nop
nop
inc %rbx
movb $0x61, (%rsi)
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x29c0, %rbp
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rbp)
nop
sub $52749, %rbp
lea addresses_D_ht+0xd21, %rsi
nop
dec %r9
movb $0x61, (%rsi)
nop
nop
cmp $42667, %rsi
lea addresses_D_ht+0x14380, %rbp
sub $30559, %rdx
movw $0x6162, (%rbp)
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x18fc0, %rsi
lea addresses_normal_ht+0x6ec0, %rdi
nop
nop
add %rbp, %rbp
mov $61, %rcx
rep movsw
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
mov $0xdc0, %rax
sub $54202, %rdx
mov (%rax), %rcx
nop
nop
add %r15, %r15

// Store
lea addresses_normal+0xd6f0, %rcx
nop
nop
nop
nop
nop
sub $6207, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
cmp %r15, %r15

// Store
lea addresses_WC+0x9840, %rdx
nop
nop
nop
nop
nop
inc %r9
movw $0x5152, (%rdx)
xor %rbx, %rbx

// Store
lea addresses_normal+0x186b8, %r15
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
add $2623, %r11

// Store
lea addresses_UC+0x8540, %r15
nop
nop
nop
add %rbx, %rbx
movl $0x51525354, (%r15)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x41d0, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor $38142, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
nop
add $33758, %rbx

// Load
lea addresses_RW+0x2460, %rbx
nop
nop
xor %r11, %r11
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_WT+0x1c5c0, %r15
clflush (%r15)
nop
nop
nop
nop
and %rcx, %rcx
mov (%r15), %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'39': 36}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
