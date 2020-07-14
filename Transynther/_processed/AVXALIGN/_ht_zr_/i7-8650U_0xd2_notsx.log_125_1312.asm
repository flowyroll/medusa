.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xfb93, %rcx
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm1, (%rcx)
nop
nop
nop
and $35331, %rax
lea addresses_A_ht+0x8cdb, %rcx
nop
nop
nop
nop
nop
and $23270, %rdi
mov (%rcx), %rdx
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x19fdb, %r9
inc %r11
movb $0x61, (%r9)
nop
cmp %r9, %r9
lea addresses_WT_ht+0x17fdb, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor %r13, %r13
movb (%rcx), %dl
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x115b, %r13
nop
nop
sub $31717, %r11
movb (%r13), %al
nop
nop
nop
and $46100, %rax
lea addresses_D_ht+0x16ddb, %rsi
lea addresses_D_ht+0x1145b, %rdi
nop
cmp $32918, %rax
mov $32, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x162db, %r9
dec %rsi
movw $0x6162, (%r9)
nop
nop
nop
cmp $6375, %r13
lea addresses_normal_ht+0x1ddbb, %rsi
lea addresses_UC_ht+0xdc67, %rdi
clflush (%rsi)
dec %r13
mov $108, %rcx
rep movsb
nop
nop
nop
nop
cmp $49343, %rdi
lea addresses_WT_ht+0x1a9b, %r13
nop
nop
nop
nop
add $14897, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r13)
nop
inc %rdx
lea addresses_normal_ht+0x1fdb, %rsi
lea addresses_WC_ht+0x71db, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $33315, %rax
mov $48, %rcx
rep movsl
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x1b3db, %r11
nop
nop
nop
nop
xor %r13, %r13
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
and $26842, %rax
lea addresses_WC_ht+0x18db4, %rsi
lea addresses_A_ht+0x785b, %rdi
nop
nop
nop
sub %rax, %rax
mov $10, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x9b85, %rsi
lea addresses_WC_ht+0x1d78d, %rdi
nop
nop
nop
nop
and $63981, %r13
mov $94, %rcx
rep movsq
dec %rax
lea addresses_D_ht+0x49db, %rcx
nop
nop
nop
nop
cmp $20163, %r9
mov (%rcx), %r13d
nop
nop
inc %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx

// Store
lea addresses_D+0x34db, %r13
nop
nop
nop
nop
cmp $32682, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r13)
dec %r9

// Store
lea addresses_WC+0x1da1b, %r14
nop
nop
nop
xor $44611, %r9
movb $0x51, (%r14)
nop
cmp $55002, %r15

// Store
mov $0x57ea79000000095b, %r13
nop
and $39006, %rcx
movl $0x51525354, (%r13)
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_WT+0x1a40f, %r13
inc %rcx
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
inc %rcx

// Store
lea addresses_WT+0xfc5b, %rcx
nop
nop
inc %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
sub $13676, %r9

// Store
mov $0x3db, %rbp
nop
nop
nop
nop
nop
dec %r13
movw $0x5152, (%rbp)
nop
nop
cmp $20257, %rbp

// Faulty Load
lea addresses_normal+0x6bdb, %r14
nop
nop
nop
inc %rcx
vmovaps (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 13, '45': 4, '44': 96, '48': 5, '46': 7}
00 45 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 48 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 00 00 44 44 00 00 44 44 44 44 44 44 44 44 44 45 44 44 45 48 48 44 46 44 44 44 44 44 48 44 44 44 44 00 44 46 00 46 44 46 46 46 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 45 44 44 46 44 44
*/
