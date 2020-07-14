.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rbp
push %rdi
lea addresses_WT_ht+0x8301, %rdi
clflush (%rdi)
nop
cmp %r14, %r14
movb $0x61, (%rdi)
nop
nop
sub %rbp, %rbp
pop %rdi
pop %rbp
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x531, %rdi
nop
nop
nop
nop
dec %rax
movl $0x51525354, (%rdi)
add $49839, %rbp

// Store
lea addresses_normal+0x1121, %rcx
nop
nop
nop
nop
cmp $15231, %r9
movl $0x51525354, (%rcx)
nop
nop
nop
dec %r9

// Store
mov $0x961, %r11
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r11)

// Exception!!!
nop
mov (0), %rbp
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_A+0xcd61, %rax
sub %rdi, %rdi
movb $0x51, (%rax)
nop
nop
nop
nop
add %rcx, %rcx

// Load
lea addresses_normal+0x62e1, %rbp
nop
inc %r11
mov (%rbp), %rcx
cmp $19858, %r11

// Faulty Load
lea addresses_A+0x3d61, %rbp
nop
nop
nop
nop
nop
sub $40738, %r11
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 33}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
