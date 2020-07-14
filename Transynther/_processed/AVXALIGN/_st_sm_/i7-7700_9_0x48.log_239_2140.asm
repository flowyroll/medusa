.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x3619, %rsi
lea addresses_D_ht+0x87d1, %rdi
nop
nop
nop
nop
nop
mfence
mov $120, %rcx
rep movsl
nop
and $43439, %r9
lea addresses_UC_ht+0xb7af, %rax
nop
nop
nop
nop
nop
cmp $1951, %r15
mov (%rax), %rdx
nop
nop
nop
nop
cmp $8289, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1e50c, %rdx
dec %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
xor $52544, %rdi

// Store
lea addresses_PSE+0x11819, %rbx
nop
nop
nop
nop
nop
add $17686, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x14419, %r9
nop
nop
nop
nop
nop
add $584, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
and $53806, %rsi

// Store
mov $0x1410680000000d69, %r14
nop
nop
nop
nop
sub $39880, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%r14)
inc %r14

// Store
lea addresses_WT+0x3c99, %rdi
nop
sub %rbx, %rbx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
sub $55573, %rbx

// Load
lea addresses_WT+0x14419, %r11
cmp %r14, %r14
movb (%r11), %bl
nop
nop
nop
nop
nop
and $18141, %r14

// Load
lea addresses_WT+0x47d9, %r14
cmp %rdx, %rdx
mov (%r14), %bx
nop
nop
inc %rsi

// Load
lea addresses_WT+0xac19, %rbx
and %rdx, %rdx
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
add $11195, %rbx

// Faulty Load
lea addresses_WT+0x14419, %r9
nop
nop
nop
nop
nop
sub $31320, %r11
movntdqa (%r9), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
{'58': 239}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
