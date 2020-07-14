.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x9d4c, %rsi
lea addresses_A_ht+0x11f4c, %rdi
nop
xor $55909, %r15
mov $73, %rcx
rep movsb
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x11b4c, %rsi
lea addresses_UC_ht+0x1ed0c, %rdi
nop
nop
nop
sub $64869, %r14
mov $121, %rcx
rep movsq
nop
nop
nop
nop
nop
and $36820, %rsi
lea addresses_UC_ht+0xbdd4, %rsi
lea addresses_WC_ht+0x1514c, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $115, %rcx
rep movsl
nop
and %rcx, %rcx
lea addresses_A_ht+0x17d4c, %rdi
nop
nop
nop
sub $8013, %rsi
mov (%rdi), %r15d
nop
add $21599, %r11
lea addresses_A_ht+0x43b4, %r14
nop
nop
add $32328, %rcx
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x6f4c, %rsi
lea addresses_WT_ht+0x11108, %rdi
nop
nop
nop
nop
nop
add $60037, %rdx
mov $36, %rcx
rep movsl
nop
nop
add $19223, %rdx
lea addresses_WT_ht+0xdd4c, %rsi
lea addresses_UC_ht+0x1c54c, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $127, %rcx
rep movsw
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x18b0c, %rsi
lea addresses_D_ht+0x1c04c, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $23, %rcx
rep movsb
nop
nop
nop
sub $58281, %r15
lea addresses_UC_ht+0x1c54c, %rcx
nop
nop
cmp $48997, %rsi
mov (%rcx), %r15d
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x6297, %rdi
clflush (%rdi)
nop
xor $32835, %r14
mov (%rdi), %rdx
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x1b8cc, %rsi
lea addresses_WT_ht+0x1c54c, %rdi
nop
nop
sub %r14, %r14
mov $77, %rcx
rep movsb
nop
nop
nop
sub $42358, %rcx
lea addresses_D_ht+0x1a6cc, %rsi
lea addresses_normal_ht+0x1264c, %rdi
nop
xor $12963, %r9
mov $70, %rcx
rep movsl
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x1fec, %rsi
lea addresses_A_ht+0xa77b, %rdi
nop
nop
nop
cmp %r14, %r14
mov $28, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1dd4c, %rdx
nop
nop
nop
nop
sub %r14, %r14
mov (%rdx), %r11w
nop
and $52821, %rcx
lea addresses_UC_ht+0x1710c, %rdi
nop
nop
nop
nop
nop
xor $1040, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
nop
nop
cmp $52753, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rdi

// Store
mov $0x7af, %rbp
add %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovaps %ymm5, (%rbp)
nop
and $48378, %r10

// Store
mov $0x94c, %r15
inc %rdi
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
add $31863, %r15

// Store
lea addresses_PSE+0x15cec, %r9
nop
nop
nop
nop
nop
add %rbp, %rbp
movl $0x51525354, (%r9)
nop
nop
add $52835, %r10

// Store
lea addresses_normal+0x4d4c, %r9
nop
nop
nop
nop
and $22520, %rbp
movb $0x51, (%r9)
nop
nop
nop
nop
sub $4274, %r9

// Load
lea addresses_WT+0xd54c, %r9
nop
nop
nop
sub %r14, %r14
mov (%r9), %r10
nop
nop
cmp $16114, %r14

// Store
lea addresses_US+0x1c79c, %rbp
nop
inc %r14
movl $0x51525354, (%rbp)

// Exception!!!
nop
nop
nop
mov (0), %r10
nop
nop
sub $26449, %r10

// Store
lea addresses_D+0x11498, %rdi
cmp %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
nop
cmp $55700, %rbp

// Store
lea addresses_RW+0x110a3, %r13
nop
nop
nop
cmp $44880, %r14
movb $0x51, (%r13)
nop
cmp $45138, %rdi

// Faulty Load
mov $0xafad000000054c, %r9
nop
inc %r13
movb (%r9), %r15b
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 5, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 4, 'size': 8, 'same': True, 'NT': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
