.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x82e9, %rdx
nop
and $27734, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xdee9, %r11
sub $11167, %rbx
movb (%r11), %r10b
and %rcx, %rcx
lea addresses_WC_ht+0xfd49, %rsi
lea addresses_D_ht+0xeee9, %rdi
nop
nop
nop
nop
xor $10932, %r11
mov $103, %rcx
rep movsb
dec %rsi
lea addresses_WT_ht+0x29d4, %rsi
nop
nop
dec %rbx
mov (%rsi), %r10w
nop
and $10591, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_WC+0x83a9, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_WC+0x1bd49, %r15
nop
nop
nop
sub $47146, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movntdq %xmm3, (%r15)
nop
nop
nop
add $16604, %r8

// Store
lea addresses_D+0x1a843, %rdx
nop
and $38682, %r15
movw $0x5152, (%rdx)
cmp %r8, %r8

// Faulty Load
lea addresses_D+0x14de9, %r15
dec %r8
mov (%r15), %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'36': 12}
36 36 36 36 36 36 36 36 36 36 36 36
*/
