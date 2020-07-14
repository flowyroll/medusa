.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x9794, %rsi
lea addresses_UC_ht+0x9554, %rdi
nop
sub %rdx, %rdx
mov $80, %rcx
rep movsw
nop
sub %r11, %r11
lea addresses_UC_ht+0x1cd54, %rsi
lea addresses_A_ht+0xf1b4, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $55815, %r15
mov $88, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xdc10, %rdx
dec %r14
movb (%rdx), %cl
nop
nop
nop
nop
and $53856, %r11
lea addresses_A_ht+0x1ba54, %rsi
lea addresses_A_ht+0x32d4, %rdi
clflush (%rdi)
and $4615, %r11
mov $67, %rcx
rep movsl
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x49e4, %rsi
lea addresses_UC_ht+0x1d024, %rdi
nop
add $23294, %rbp
mov $77, %rcx
rep movsw
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x15d54, %rsi
lea addresses_WC_ht+0x9cd4, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $116, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x6364, %rsi
lea addresses_WC_ht+0x13eaf, %rdi
nop
nop
nop
nop
sub $19844, %rbp
mov $28, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_WC_ht+0x7f54, %r15
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %r15
movaps %xmm3, (%r15)
cmp %r11, %r11
lea addresses_normal_ht+0x14554, %rdi
inc %r15
mov (%rdi), %rdx
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0xa8ca, %rbp
nop
nop
nop
nop
nop
dec %rdi
movb $0x61, (%rbp)
nop
cmp $32417, %r15
lea addresses_A_ht+0x6dd4, %rsi
nop
inc %r11
mov (%rsi), %edx
nop
xor %rcx, %rcx
lea addresses_normal_ht+0xfbc0, %rsi
lea addresses_D_ht+0x12814, %rdi
nop
sub $57453, %r14
mov $96, %rcx
rep movsq
nop
nop
nop
sub $24439, %rcx
lea addresses_WT_ht+0x17f54, %rdi
nop
nop
nop
cmp %rdx, %rdx
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x1d554, %r14
nop
nop
nop
and $63509, %r11
movl $0x61626364, (%r14)
nop
and %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x14d54, %rsi
lea addresses_UC+0x14d54, %rdi
nop
nop
nop
add $51489, %r14
mov $77, %rcx
rep movsw
inc %rbp

// Store
lea addresses_A+0x7a84, %rbx
add $6017, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movntdq %xmm3, (%rbx)
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_normal+0x14d54, %rcx
nop
nop
nop
nop
xor $60348, %rsi
movb (%rcx), %r14b
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'34': 65}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
