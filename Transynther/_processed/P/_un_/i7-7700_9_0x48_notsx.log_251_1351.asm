.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1ebbf, %r9
nop
nop
nop
cmp $31537, %rcx
mov (%r9), %r11
nop
nop
nop
cmp $27042, %r10
lea addresses_normal_ht+0x7b77, %rsi
lea addresses_normal_ht+0x127bf, %rdi
nop
nop
add %rbx, %rbx
mov $111, %rcx
rep movsl
sub $6520, %r10
lea addresses_WT_ht+0x8113, %rsi
lea addresses_UC_ht+0x99bf, %rdi
cmp %r9, %r9
mov $0, %rcx
rep movsq
nop
nop
nop
sub $64054, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_PSE+0x1abbf, %r9
nop
and %r11, %r11
movb $0x51, (%r9)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_WT+0xa3f, %rbp
nop
nop
add $54990, %r11
movl $0x51525354, (%rbp)
nop
nop
add $63252, %rbp

// Store
lea addresses_WT+0xff1f, %r11
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, (%r11)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_normal+0xf7df, %r10
cmp $54624, %r11
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
nop
nop
sub %rbp, %rbp

// Faulty Load
mov $0x3bf, %rbp
nop
inc %r10
mov (%rbp), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'0e': 1, 'e0': 237, 'de': 13}
e0 e0 de de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 de e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 0e e0 e0 e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 de e0 e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0
*/
