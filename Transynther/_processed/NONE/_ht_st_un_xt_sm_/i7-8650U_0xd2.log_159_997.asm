.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a5a4, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rcx)
cmp $40099, %r11
lea addresses_normal_ht+0x17b24, %r11
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
xor $26384, %rbp
lea addresses_WC_ht+0x5fb4, %rbx
nop
nop
dec %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rbx)
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x97a4, %r11
nop
nop
xor $60671, %rsi
mov (%r11), %rbp
nop
xor $4372, %rsi
lea addresses_WT_ht+0xeca4, %rsi
lea addresses_UC_ht+0x1ade0, %rdi
nop
and $39522, %rbp
mov $9, %rcx
rep movsw
nop
nop
nop
dec %r11
lea addresses_A_ht+0xa82, %r11
clflush (%r11)
nop
nop
nop
cmp $62362, %rbp
mov $0x6162636465666768, %r15
movq %r15, (%r11)
nop
add $13688, %rsi
lea addresses_normal_ht+0xb364, %rsi
lea addresses_D_ht+0xb444, %rdi
clflush (%rdi)
nop
nop
xor $6609, %r8
mov $117, %rcx
rep movsw
inc %rcx
lea addresses_UC_ht+0x15852, %r11
nop
nop
nop
and $60118, %rcx
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
xor $25123, %r8
lea addresses_UC_ht+0xfb64, %r15
nop
nop
nop
nop
nop
cmp %r11, %r11
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm3
vpextrq $0, %xmm3, %rsi
nop
inc %rsi
lea addresses_WT_ht+0xd2e8, %rsi
lea addresses_WT_ht+0x29a4, %rdi
nop
nop
add %r11, %r11
mov $79, %rcx
rep movsb
nop
and $599, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0xbaf4, %rbp
nop
nop
nop
nop
nop
inc %rdx
movw $0x5152, (%rbp)
nop
nop
and $14320, %rax

// Load
mov $0x5bf050000000f44, %rbx
nop
sub $45803, %r13
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
cmp %rax, %rax

// Store
lea addresses_US+0x3362, %rcx
nop
add $62117, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movntdq %xmm4, (%rcx)
nop
nop
nop
nop
xor $54921, %rax

// Store
lea addresses_WC+0x15758, %rdx
nop
nop
nop
nop
nop
cmp $32569, %rax
movb $0x51, (%rdx)
nop
nop
dec %r8

// Store
lea addresses_WT+0x14ca4, %rax
sub $64902, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rax)
nop
nop
add $36567, %rdx

// Store
lea addresses_WT+0x126a4, %rcx
clflush (%rcx)
nop
nop
dec %rdx
movb $0x51, (%rcx)
nop
sub $62487, %rbp

// Faulty Load
lea addresses_WT+0x14ca4, %r8
nop
nop
nop
nop
xor %rbx, %rbx
mov (%r8), %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'58': 133, '2a': 1, '7e': 1, '38': 1, '22': 1, 'da': 1, 'cc': 2, 'd4': 1, '0e': 2, '12': 1, '18': 1, '16': 1, '10': 1, '4c': 1, '04': 3, '08': 2, '20': 2, 'aa': 1, '6a': 1, '02': 2}
58 58 2a 7e 58 38 58 22 da 58 58 58 58 58 cc 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d4 0e 58 cc 58 58 58 58 58 12 58 0e 58 58 58 58 58 58 58 58 58 18 58 58 58 58 58 58 58 58 58 58 58 58 16 10 4c 58 04 58 58 08 58 58 58 58 04 58 58 58 58 58 58 58 58 20 aa 58 58 6a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 08 58 58 58 58 58 58 58 04 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 02 58 58 58 58 58 58 58 58 20 58 58 02 58 58 58 58 58 58 58 58
*/
