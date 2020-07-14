.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1dd19, %r14
nop
nop
nop
add $15397, %r9
mov $0x6162636465666768, %r11
movq %r11, (%r14)
nop
nop
nop
nop
sub $12439, %r8
lea addresses_WT_ht+0x1de59, %r11
nop
nop
nop
nop
add %r14, %r14
mov (%r11), %r10
nop
sub $11054, %r8
lea addresses_WC_ht+0x13519, %rsi
nop
sub $42733, %r9
mov (%rsi), %r10d
nop
add $22960, %r8
lea addresses_WC_ht+0x619, %r8
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
add $10488, %r11
lea addresses_normal_ht+0x1e191, %r14
nop
nop
xor $14467, %r9
movb $0x61, (%r14)
nop
nop
inc %r14
lea addresses_D_ht+0x1c049, %r10
nop
nop
nop
nop
sub $35373, %r11
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
xor $20830, %r8
lea addresses_normal_ht+0xdf36, %rcx
nop
add %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
sub $39964, %r10
lea addresses_WC_ht+0x12419, %rsi
lea addresses_A_ht+0xe719, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $2, %rcx
rep movsb
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x19159, %rsi
lea addresses_WC_ht+0x8619, %rdi
nop
nop
nop
sub $46744, %r10
mov $41, %rcx
rep movsw
nop
nop
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rsi

// Store
lea addresses_normal+0x150ab, %rbx
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
cmp $1766, %rbx

// Store
lea addresses_normal+0x6029, %rbx
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%rbx)
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_PSE+0x12919, %r13
nop
nop
add $4319, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
xor $39164, %r11

// Load
lea addresses_UC+0x11114, %r11
nop
nop
and $33148, %r13
mov (%r11), %r8
nop
and $42317, %r14

// Store
lea addresses_normal+0x107fc, %r13
inc %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r13)
nop
nop
xor $33845, %r14

// Load
lea addresses_WT+0x6d19, %rsi
nop
nop
nop
nop
nop
add $44258, %r12
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
nop
nop
sub $15460, %r8

// Store
lea addresses_UC+0x11499, %r13
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_RW+0x143bd, %r13
nop
xor $12498, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r13)
nop
add $46336, %rsi

// Load
lea addresses_WC+0x1b619, %r14
nop
nop
nop
nop
xor $19955, %rsi
movb (%r14), %r13b
add %r12, %r12

// Faulty Load
lea addresses_WT+0x6d19, %rbx
nop
nop
nop
nop
nop
add $56165, %r12
mov (%rbx), %si
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
