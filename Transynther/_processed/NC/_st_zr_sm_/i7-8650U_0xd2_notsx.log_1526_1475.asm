.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x9ab2, %r15
nop
nop
nop
nop
nop
cmp %rax, %rax
movb (%r15), %r11b
nop
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x53a8, %rsi
lea addresses_A_ht+0x3758, %rdi
nop
nop
nop
nop
cmp $48365, %rbp
mov $121, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x15364, %rsi
lea addresses_UC_ht+0x1a424, %rdi
nop
sub $31890, %rbp
mov $20, %rcx
rep movsw
cmp $30053, %r11
lea addresses_WT_ht+0x14c2c, %r15
cmp $62487, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x17264, %r10
nop
nop
nop
dec %r15
movups (%r10), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x13e28, %rax
clflush (%rax)
nop
cmp $36396, %rcx
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x3764, %rdi
nop
nop
nop
and %rax, %rax
movw $0x6162, (%rdi)
inc %rcx
lea addresses_WC_ht+0x16396, %rsi
lea addresses_WC_ht+0xb3c, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $15, %rcx
rep movsw
nop
nop
nop
add $53365, %rsi
lea addresses_UC_ht+0xf064, %r10
add %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, (%r10)
inc %rbp
lea addresses_UC_ht+0xc194, %rax
nop
cmp %r10, %r10
mov (%rax), %rcx
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x4c64, %rsi
lea addresses_normal_ht+0x17d64, %rdi
clflush (%rdi)
nop
xor $47585, %r11
mov $72, %rcx
rep movsw
nop
and %rbp, %rbp
lea addresses_normal_ht+0x1e272, %r15
nop
nop
cmp %r11, %r11
mov (%r15), %bp
nop
nop
nop
nop
nop
and $25894, %rcx
lea addresses_D_ht+0xc120, %rsi
lea addresses_A_ht+0x1a364, %rdi
nop
nop
nop
nop
nop
add $37843, %rax
mov $122, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $37585, %rdi
lea addresses_UC_ht+0x35, %r10
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%r10)
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_PSE+0x6da4, %r12
nop
nop
nop
dec %r9
mov (%r12), %edx
nop
nop
nop
cmp $27446, %r12

// Store
lea addresses_RW+0x5a5c, %rax
clflush (%rax)
nop
nop
nop
nop
cmp $63862, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
nop
sub $40699, %r12

// Store
lea addresses_normal+0x72fc, %rcx
nop
and $3239, %r9
movb $0x51, (%rcx)
nop
add $40972, %rax

// Store
lea addresses_D+0xcb30, %r9
nop
sub $35184, %rcx
movw $0x5152, (%r9)
nop
nop
cmp %r14, %r14

// Load
lea addresses_RW+0xc204, %rdx
nop
nop
nop
nop
add $32048, %rcx
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
nop
xor $9012, %r9

// Store
mov $0x1e206f000000066c, %r14
cmp $63006, %r9
mov $0x5152535455565758, %rax
movq %rax, (%r14)
nop
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0x1c4fa, %rcx
nop
nop
inc %r9
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
dec %rax

// Store
mov $0x358f100000000364, %r9
add %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r9)
nop
nop
sub %r14, %r14

// Store
lea addresses_RW+0x1cac4, %rdx
nop
sub $20080, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
dec %rcx

// Faulty Load
mov $0x358f100000000364, %rdx
nop
nop
nop
nop
add %r12, %r12
mov (%rdx), %di
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 1520, '58': 6}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
