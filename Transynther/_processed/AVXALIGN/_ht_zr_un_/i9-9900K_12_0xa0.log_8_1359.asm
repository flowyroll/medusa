.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4e62, %r14
nop
nop
and $45091, %r11
movl $0x61626364, (%r14)
xor $28606, %r14
lea addresses_WT_ht+0x167f6, %r13
nop
nop
xor $34070, %r11
mov (%r13), %bx
nop
nop
nop
nop
sub $60492, %rbx
lea addresses_UC_ht+0x11ff6, %rsi
lea addresses_A_ht+0x26f6, %rdi
nop
inc %rbx
mov $95, %rcx
rep movsw
nop
nop
nop
cmp $60163, %r13
lea addresses_A_ht+0x1d676, %rdi
nop
inc %r13
mov (%rdi), %rcx
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x27f6, %r14
nop
nop
nop
nop
nop
and %r13, %r13
mov (%r14), %r11d
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0xdf6, %rsi
nop
xor $7198, %rdi
movb $0x61, (%rsi)
nop
nop
sub $4861, %r14
lea addresses_normal_ht+0x140f6, %rsi
lea addresses_WT_ht+0x15c06, %rdi
add %r9, %r9
mov $70, %rcx
rep movsq
nop
nop
nop
add $49145, %r11
lea addresses_D_ht+0xc0d1, %r9
nop
cmp $20464, %r14
movb (%r9), %cl
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xc538, %r13
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0xc6f6, %r14
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xbff6, %r11
nop
nop
inc %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x165ca, %rbx
nop
add $53016, %r9
mov (%rbx), %r11d
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_PSE+0x19ff6, %r15
nop
nop
nop
nop
and $12352, %r13
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_D+0x1b176, %rdx
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
dec %rbx

// Store
lea addresses_RW+0xfde6, %rdx
nop
nop
nop
cmp $37240, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rdx)
nop
and %r13, %r13

// Store
lea addresses_US+0x1db56, %r13
inc %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
add $21917, %r13

// Store
mov $0x658f120000000396, %rbx
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
inc %rbp

// Store
lea addresses_US+0xce16, %r13
nop
xor $62514, %rbx
movw $0x5152, (%r13)
nop
nop
nop
nop
sub $27176, %rax

// Store
lea addresses_A+0x18bf6, %rax
nop
nop
nop
and %rbx, %rbx
movb $0x51, (%rax)
nop
nop
inc %rbx

// Store
mov $0xaf6, %r11
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r11)
add $13051, %rbx

// Load
mov $0x37db950000000ff6, %r13
nop
nop
nop
nop
and %rax, %rax
mov (%r13), %r15
nop
add $21525, %r15

// Faulty Load
lea addresses_A+0xff6, %rax
clflush (%rax)
nop
nop
nop
sub $14828, %rdx
vmovaps (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'44': 3, '00': 4, 'f4': 1}
44 f4 00 00 00 44 44 00
*/
