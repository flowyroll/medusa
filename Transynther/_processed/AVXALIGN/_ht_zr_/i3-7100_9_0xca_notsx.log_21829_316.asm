.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1e2d5, %rbp
nop
nop
nop
nop
sub %r13, %r13
movl $0x61626364, (%rbp)
and %r14, %r14
lea addresses_D_ht+0x8fd7, %rsi
lea addresses_UC_ht+0xf895, %rdi
nop
nop
nop
sub %r13, %r13
mov $73, %rcx
rep movsq
sub %rbp, %rbp
lea addresses_normal_ht+0x9815, %r14
clflush (%r14)
nop
nop
and $32882, %rbp
mov (%r14), %cx
nop
dec %r14
lea addresses_WT_ht+0x1c15, %rsi
lea addresses_WT_ht+0x13415, %rdi
nop
nop
nop
dec %r10
mov $32, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $1986, %rdi
lea addresses_WC_ht+0x13a15, %r13
nop
dec %rbp
mov $0x6162636465666768, %r14
movq %r14, (%r13)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x8b1d, %rcx
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%rcx), %r11b
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x1a815, %r13
add $31130, %r10
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
xor $33202, %rsi
lea addresses_WT_ht+0x13a65, %r10
nop
nop
nop
nop
and $32044, %rsi
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
sub $19895, %r10
lea addresses_WT_ht+0x1b305, %r11
and $7618, %r14
movups (%r11), %xmm1
vpextrq $0, %xmm1, %rdi
cmp $61309, %r13
lea addresses_WC_ht+0xb713, %r14
nop
nop
nop
nop
nop
cmp $37670, %r13
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0x19c55, %r11
sub $14661, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm7
and $0xffffffffffffffc0, %r11
vmovaps %ymm7, (%r11)
nop
nop
nop
nop
and $1510, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rdi
push %rsi

// Store
lea addresses_RW+0x169d5, %r13
nop
and $51534, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r13)
xor %rsi, %rsi

// Store
lea addresses_RW+0x19c5, %r15
nop
nop
add $49866, %rdi
movl $0x51525354, (%r15)
nop
nop
nop
nop
add %rax, %rax

// Store
mov $0x2617b60000000c15, %r13
nop
and $19482, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
nop
nop
nop
dec %r13

// Load
lea addresses_WT+0xf595, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rsi), %r11b
nop
nop
nop
sub $53198, %r11

// Load
lea addresses_WT+0x1b415, %rsi
nop
add $47533, %r14
mov (%rsi), %rdi
and %r15, %r15

// Store
lea addresses_US+0x1de3d, %r11
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
sub $20459, %r15

// Store
mov $0x33ae9f0000000215, %rsi
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
and %rsi, %rsi

// Store
lea addresses_A+0xad9d, %rsi
nop
nop
nop
nop
nop
xor $21617, %rax
movw $0x5152, (%rsi)
nop
nop
add $53137, %r13

// Store
lea addresses_WC+0x2755, %r11
and %r14, %r14
movl $0x51525354, (%r11)
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
mov $0x2617b60000000c15, %r13
nop
nop
nop
nop
nop
and %r11, %r11
movaps (%r13), %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_RW', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'46': 12515, '00': 9130, '49': 184}
00 46 46 46 46 00 46 46 46 46 46 00 46 46 00 00 46 46 00 00 00 46 46 46 46 00 46 00 00 46 00 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 46 00 00 00 46 00 00 46 46 00 00 46 00 00 46 46 46 46 46 00 00 46 00 00 00 46 00 46 00 46 00 46 00 46 00 46 46 00 46 46 00 46 00 00 00 46 00 46 46 00 00 00 00 46 00 46 46 46 00 00 46 00 46 00 46 00 00 46 00 00 46 00 46 46 00 00 00 46 46 46 46 46 00 00 46 46 00 46 00 00 00 46 46 00 00 46 46 00 00 46 46 46 00 46 46 00 00 00 00 46 00 00 46 00 46 00 46 46 00 00 46 00 00 00 46 46 46 46 46 46 00 46 46 00 46 46 46 00 00 00 00 00 46 46 46 46 46 00 46 46 46 00 46 46 00 46 46 00 46 46 46 00 46 00 46 00 00 46 00 00 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 00 00 46 00 00 46 46 00 00 46 46 00 00 00 00 00 00 00 00 46 00 46 00 46 00 00 46 00 00 00 46 46 00 00 46 00 46 00 46 46 46 00 46 46 46 00 46 46 46 00 00 46 00 46 46 00 00 46 46 00 00 00 46 00 00 46 00 00 46 00 00 00 00 00 46 00 00 46 46 00 46 46 00 46 46 46 00 46 00 00 46 46 00 46 46 00 46 00 46 46 46 46 46 46 00 46 00 00 46 46 00 46 00 00 46 00 46 00 46 00 00 46 00 00 46 46 00 46 00 00 46 46 46 00 46 46 46 46 46 46 00 00 46 46 46 46 00 46 00 00 46 00 00 46 00 00 00 46 46 46 46 46 46 46 46 00 46 00 00 46 46 00 46 46 00 46 46 46 46 46 00 46 00 46 46 46 46 00 46 46 46 46 46 00 00 46 00 46 00 46 46 46 46 00 46 46 00 46 46 49 46 46 46 46 46 00 46 00 46 46 46 46 46 46 00 00 46 46 46 00 46 46 00 46 00 46 46 00 46 00 46 46 46 46 46 00 00 46 00 46 00 46 46 46 00 00 46 00 46 46 46 46 46 00 46 00 46 46 46 00 00 46 00 46 00 00 46 46 46 00 00 46 00 00 46 46 00 46 46 00 46 46 46 00 00 00 46 46 00 00 46 00 46 00 46 46 00 46 46 00 46 00 46 46 46 46 00 46 46 46 46 00 46 00 46 46 49 46 46 46 00 00 46 46 46 46 00 46 46 00 46 46 00 46 46 00 00 00 46 46 46 00 00 46 00 46 46 00 46 46 46 46 49 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 00 00 46 46 00 00 46 46 46 00 46 00 46 46 00 00 46 46 46 00 00 46 46 00 46 46 00 46 46 46 46 00 46 00 00 46 46 00 00 46 00 46 00 46 00 00 46 46 00 46 00 00 00 00 00 00 00 00 00 46 00 46 46 00 00 46 00 00 00 46 46 46 00 46 46 00 00 00 46 46 46 00 00 46 46 00 46 00 46 46 00 46 00 00 46 46 00 46 00 46 46 00 46 46 00 00 00 46 00 46 46 46 46 46 00 00 00 00 46 46 46 46 00 00 46 00 00 00 46 46 46 46 46 46 00 46 00 46 00 46 46 46 46 46 46 00 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 00 00 46 46 00 49 46 46 00 46 46 00 00 46 00 00 00 46 46 46 46 46 46 00 00 00 00 46 46 46 46 00 00 46 00 46 00 00 46 46 46 46 00 46 46 46 00 00 46 46 46 00 46 46 00 00 00 00 00 00 00 46 00 46 00 46 46 46 46 46 00 46 46 46 46 46 00 00 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 00 46 46 00 00 00 49 46 00 46 46 00 00 46 46 00 46 00 46 00 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 00 00 46 00 00 46 00 00 00 46 00 00 46 46 00 00 00 46 00 00 00 00 00 46 00 46 46 00 46 46 00 46 00 46 00 00 46 46 46 00 46 00 00 46 46 46 46 46 46 46 00 46 00 46 00 46 00 00 46 46 46 00 46 00 00 46 46 00 46 46 00 46 00 00 46 00 46 46 00 46 00 00 00 00 46 00 00 46 46 00 46 46 00 46 00 46
*/
