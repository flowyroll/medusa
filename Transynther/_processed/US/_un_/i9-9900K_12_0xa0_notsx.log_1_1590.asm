.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb3cc, %rsi
lea addresses_normal_ht+0x1caf2, %rdi
nop
nop
cmp $29464, %rbx
mov $55, %rcx
rep movsb
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x44c, %rdi
cmp $49662, %r14
movb $0x61, (%rdi)
nop
inc %rsi
lea addresses_D_ht+0x10a8c, %rbx
nop
nop
nop
nop
cmp $47095, %r15
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
xor $45570, %r9
lea addresses_normal_ht+0x194a8, %rcx
nop
nop
nop
xor %r15, %r15
mov (%rcx), %r9d
nop
add $53679, %r14
lea addresses_A_ht+0xedcc, %rsi
lea addresses_A_ht+0xadcc, %rdi
nop
nop
nop
nop
add $46369, %rbp
mov $107, %rcx
rep movsb
nop
cmp $51465, %r15
lea addresses_WT_ht+0x1bf4c, %rsi
lea addresses_UC_ht+0xb0dc, %rdi
nop
cmp $58821, %rbp
mov $35, %rcx
rep movsq
and $62730, %r9
lea addresses_WT_ht+0x93e6, %rbx
nop
nop
nop
and %rcx, %rcx
mov (%rbx), %r9w
nop
sub $6129, %rbp
lea addresses_WC_ht+0x1bfcc, %rsi
lea addresses_WC_ht+0xc5cc, %rdi
nop
nop
nop
xor $10295, %r15
mov $76, %rcx
rep movsb
sub $62942, %rcx
lea addresses_D_ht+0x14438, %rbp
nop
nop
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x16ccc, %rsi
lea addresses_WC_ht+0x10e00, %rdi
nop
nop
nop
dec %r14
mov $65, %rcx
rep movsl
dec %r15
lea addresses_D_ht+0x75cc, %rdi
nop
nop
nop
nop
nop
inc %r14
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
add $23047, %rdi
lea addresses_WC_ht+0x1c68c, %r9
clflush (%r9)
nop
nop
nop
cmp $34393, %rdi
movl $0x61626364, (%r9)
mfence
lea addresses_D_ht+0x2454, %rsi
nop
nop
add %r15, %r15
movb $0x61, (%rsi)
add $60584, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x4066c10000000dcc, %rbx
nop
nop
nop
nop
dec %r10
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
cmp $10098, %r9

// REPMOV
lea addresses_normal+0x13ccc, %rsi
lea addresses_US+0x73cc, %rdi
nop
nop
nop
nop
nop
and $37893, %r11
mov $25, %rcx
rep movsw
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0x5cc, %rdi
clflush (%rdi)
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
nop
cmp $63449, %r10

// Load
lea addresses_RW+0xedcc, %rdi
nop
nop
nop
and $18150, %r9
mov (%rdi), %esi
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_UC+0x115cc, %rsi
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rsi)
nop
and $8044, %r9

// Store
lea addresses_WC+0x1b5cc, %rbp
nop
add $36683, %rsi
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_RW+0x4a3e, %rcx
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_D+0x11dcc, %r11
sub $8136, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
xor %rbx, %rbx

// REPMOV
lea addresses_UC+0xfc3e, %rsi
lea addresses_US+0x1a5cc, %rdi
nop
sub %r9, %r9
mov $36, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $60982, %rcx

// Store
lea addresses_PSE+0x1910, %rbp
nop
nop
nop
nop
nop
inc %rdi
movl $0x51525354, (%rbp)
and %rbx, %rbx

// Store
lea addresses_US+0x1a5cc, %rsi
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%rsi)
nop
and $22704, %rdi

// Faulty Load
lea addresses_US+0x1a5cc, %rcx
clflush (%rcx)
nop
nop
and %rbx, %rbx
movb (%rcx), %r11b
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'cf': 1}
cf
*/
