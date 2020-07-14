.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8b59, %rsi
lea addresses_UC_ht+0x25bc, %rdi
xor %r14, %r14
mov $102, %rcx
rep movsb
nop
xor %rdi, %rdi
lea addresses_A_ht+0xd3d9, %rsi
lea addresses_normal_ht+0x14fd9, %rdi
nop
nop
nop
inc %r11
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1add9, %rsi
lea addresses_WT_ht+0x1e999, %rdi
nop
dec %r9
mov $65, %rcx
rep movsl
nop
lfence
lea addresses_WT_ht+0x6bd9, %rcx
nop
nop
nop
nop
cmp $39648, %rsi
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x97c7, %rsi
lea addresses_normal_ht+0x6849, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $56, %rcx
rep movsl
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x10e79, %rcx
nop
nop
sub $51176, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0xbe2f, %rsi
lea addresses_UC_ht+0x1ab65, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $113, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x10199, %rsi
nop
nop
nop
nop
add %r11, %r11
movb (%rsi), %cl
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xe7d9, %rsi
nop
nop
nop
dec %r14
mov (%rsi), %di
nop
nop
nop
nop
nop
cmp $44614, %r11
lea addresses_WC_ht+0xa4b1, %rbp
clflush (%rbp)
nop
and $31796, %r14
mov $0x6162636465666768, %r13
movq %r13, (%rbp)
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x15dd9, %rsi
lea addresses_WT+0x36f9, %rdi
nop
nop
nop
nop
add $55848, %r13
mov $32, %rcx
rep movsl
nop
xor %r13, %r13

// Store
lea addresses_PSE+0x95eb, %rdx
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%rdx)
nop
nop
nop
nop
cmp $21649, %rdx

// Load
lea addresses_A+0x1f359, %rsi
xor %rcx, %rcx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx

// REPMOV
lea addresses_A+0xa0e5, %rsi
mov $0x3d9, %rdi
nop
nop
nop
xor %r13, %r13
mov $75, %rcx
rep movsq
nop
nop
inc %rsi

// Faulty Load
mov $0x3d9, %rdi
nop
nop
nop
and $47778, %r13
mov (%rdi), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_RW', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A', 'congruent': 1}, 'dst': {'same': True, 'type': 'addresses_P', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'de': 1}
de
*/
