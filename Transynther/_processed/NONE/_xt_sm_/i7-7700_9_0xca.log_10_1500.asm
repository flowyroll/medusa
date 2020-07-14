.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc339, %rdx
nop
nop
nop
dec %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x15ab9, %rsi
lea addresses_WC_ht+0x1c4b9, %rdi
nop
nop
nop
cmp %r15, %r15
mov $20, %rcx
rep movsl
nop
add %r13, %r13
lea addresses_A_ht+0xfa39, %rsi
lea addresses_UC_ht+0xd379, %rdi
nop
add %r10, %r10
mov $17, %rcx
rep movsw
inc %rdi
lea addresses_D_ht+0xe8b9, %rsi
lea addresses_UC_ht+0x9db9, %rdi
nop
nop
sub %r9, %r9
mov $118, %rcx
rep movsl
add $9691, %rdi
lea addresses_WT_ht+0xe6e9, %rsi
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %rsi
movntdq %xmm4, (%rsi)
xor $27588, %rdi
lea addresses_WT_ht+0xa7b9, %rsi
nop
nop
nop
sub %rdx, %rdx
mov (%rsi), %r9
and $13845, %rdx
lea addresses_normal_ht+0xe581, %rdx
nop
cmp $59235, %r13
movb $0x61, (%rdx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x151d1, %rsi
lea addresses_A_ht+0x19c59, %rdi
nop
nop
nop
add $58480, %r15
mov $87, %rcx
rep movsq
nop
nop
nop
add $21170, %rdx
lea addresses_D_ht+0x683d, %r9
clflush (%r9)
nop
nop
nop
nop
nop
inc %rsi
movups (%r9), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x15b9, %r15
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x148b9, %rsi
lea addresses_WT_ht+0xc8b9, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $3280, %r10
mov $20, %rcx
rep movsb
nop
sub %r15, %r15
lea addresses_A_ht+0x579d, %rsi
nop
nop
nop
and $37072, %r13
movb (%rsi), %cl
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xb4b9, %rsi
lea addresses_RW+0xb4b9, %rdi
nop
nop
xor %rax, %rax
mov $0, %rcx
rep movsq
and $43169, %rcx

// Store
lea addresses_normal+0x14e79, %r11
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, (%r11)
add %r11, %r11

// Load
lea addresses_normal+0x2cb9, %r9
add %rsi, %rsi
mov (%r9), %cx
nop
nop
xor %r13, %r13

// Store
lea addresses_RW+0xb4b9, %r9
nop
nop
xor $36704, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
sub $5378, %r9

// Load
lea addresses_WT+0x11769, %r11
nop
nop
nop
nop
sub %rax, %rax
movaps (%r11), %xmm3
vpextrq $0, %xmm3, %r9

// Exception!!!
nop
nop
nop
mov (0), %rcx
nop
nop
sub $41620, %r11

// Store
lea addresses_normal+0xfeb9, %r9
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0x15939, %rdi
nop
and %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movntdq %xmm0, (%rdi)
and $31842, %rax

// Load
lea addresses_WC+0x8239, %rax
nop
nop
nop
dec %rcx
movb (%rax), %r11b
nop
nop
sub %r11, %r11

// Store
mov $0x665a950000000cb9, %rsi
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rsi)

// Exception!!!
nop
nop
mov (0), %rcx
nop
nop
dec %rdi

// Store
mov $0xdb9, %rcx
nop
nop
nop
nop
nop
cmp $61793, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rcx)
nop
add $32632, %rdi

// Faulty Load
lea addresses_RW+0xb4b9, %r9
nop
nop
cmp %r13, %r13
movb (%r9), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'58': 10}
58 58 58 58 58 58 58 58 58 58
*/
