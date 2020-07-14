.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1b17e, %rdi
nop
dec %r10
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
inc %r9
lea addresses_WC_ht+0x1c50a, %r12
nop
add $58169, %rsi
mov (%r12), %r9
nop
add $40044, %r14
lea addresses_A_ht+0x9f7e, %rsi
lea addresses_D_ht+0xc95e, %rdi
nop
xor %rax, %rax
mov $54, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x4fa6, %rsi
cmp $21513, %r12
mov (%rsi), %rax
nop
nop
nop
nop
cmp $59797, %rdi
lea addresses_WT_ht+0x497e, %r10
nop
nop
nop
inc %r12
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x166be, %r14
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
xor $2100, %r14
lea addresses_D_ht+0x1297e, %rax
nop
nop
nop
sub %r14, %r14
mov (%rax), %ecx
nop
nop
nop
nop
sub $4496, %r14
lea addresses_D_ht+0x5a72, %rsi
lea addresses_WC_ht+0x617e, %rdi
nop
nop
nop
add $47964, %r10
mov $103, %rcx
rep movsl
nop
nop
nop
and $7777, %rsi
lea addresses_UC_ht+0x212, %r14
xor %r9, %r9
mov (%r14), %si
nop
add $49596, %r10
lea addresses_WT_ht+0x417e, %rsi
lea addresses_D_ht+0x6fca, %rdi
nop
dec %r14
mov $96, %rcx
rep movsw
inc %rsi
lea addresses_UC_ht+0x1007e, %rsi
lea addresses_WC_ht+0x1b17e, %rdi
nop
add %r10, %r10
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
add $39040, %rdi
lea addresses_WC_ht+0x1d92, %rsi
lea addresses_A_ht+0x5406, %rdi
nop
nop
nop
nop
sub $16078, %r9
mov $81, %rcx
rep movsl
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xc77e, %rsi
lea addresses_normal_ht+0x6f1d, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r9, %r9
mov $15, %rcx
rep movsq
nop
nop
sub $44875, %r9
lea addresses_WC_ht+0x1c0a8, %rsi
lea addresses_normal_ht+0x59d6, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $83, %rcx
rep movsq
nop
nop
nop
nop
add $35651, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rax
push %rsi

// Load
lea addresses_RW+0x117e, %rax
clflush (%rax)
nop
nop
nop
nop
add $47877, %r13
mov (%rax), %r11d
nop
and $35879, %r13

// Store
mov $0x8f6, %r8
clflush (%r8)
and $10259, %r9
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
nop
nop
nop
xor $63265, %r9

// Store
lea addresses_normal+0x154ae, %r13
nop
nop
inc %rax
movl $0x51525354, (%r13)

// Exception!!!
nop
nop
nop
mov (0), %r11
nop
sub %r13, %r13

// Store
lea addresses_WT+0x1257e, %rsi
nop
nop
and %r13, %r13
movb $0x51, (%rsi)

// Exception!!!
nop
nop
nop
mov (0), %r11
nop
add $48522, %r8

// Load
lea addresses_normal+0x217e, %r11
nop
dec %r8
mov (%r11), %r9w
nop
nop
nop
nop
inc %rax

// Store
lea addresses_RW+0x145fe, %r8
nop
nop
nop
add $15370, %rsi
movl $0x51525354, (%r8)
and $49724, %r9

// Faulty Load
lea addresses_WT+0x817e, %rsi
nop
nop
nop
nop
sub %r9, %r9
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'44': 55, '46': 112, '49': 1543, '00': 10080, '48': 6229}
48 49 48 48 00 00 49 48 00 48 48 48 48 00 00 49 49 00 00 48 00 48 48 00 00 00 48 00 48 00 00 00 00 00 00 48 48 00 49 48 00 00 48 48 00 48 00 00 48 00 00 48 48 00 48 00 00 48 48 48 48 48 48 49 00 48 00 00 48 49 49 00 00 00 00 00 00 00 00 00 00 48 00 49 00 49 48 00 48 00 00 48 48 00 48 00 00 00 00 48 00 00 00 48 00 48 48 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 48 48 48 00 49 48 00 00 00 48 00 00 49 49 49 48 00 49 00 48 48 00 00 48 48 48 48 48 00 49 44 00 48 00 00 00 00 00 00 48 00 00 00 48 00 48 48 00 00 00 48 00 48 48 49 00 48 00 00 00 00 00 00 00 48 00 48 00 00 46 49 49 48 49 00 48 00 48 48 49 49 48 00 00 48 48 00 00 00 00 48 00 48 00 49 48 00 00 00 48 48 00 48 00 00 00 48 48 00 48 48 00 00 00 48 48 00 00 48 00 48 00 48 48 48 00 49 48 48 00 00 48 00 00 48 00 00 00 48 00 48 48 00 00 00 00 00 00 00 48 00 48 00 48 00 49 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 00 00 00 00 00 48 48 00 48 00 00 48 00 00 48 00 48 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 00 48 49 48 00 48 00 00 49 48 00 00 48 48 48 48 48 48 48 00 48 48 00 00 48 48 00 48 00 48 00 00 49 00 00 00 48 48 00 00 48 00 00 00 00 48 48 00 48 00 00 48 48 00 48 00 00 48 00 00 00 00 00 48 48 49 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 49 49 49 49 00 48 48 00 00 48 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 49 00 48 00 48 00 48 48 00 48 00 00 48 00 48 00 48 00 49 49 49 00 00 00 48 00 00 48 49 48 00 00 48 00 49 00 48 00 00 00 00 48 49 49 48 48 48 48 00 48 00 48 48 00 48 00 00 00 00 00 49 49 49 49 49 00 00 49 48 48 48 48 48 48 48 00 48 00 00 48 48 00 00 48 00 00 00 48 49 46 00 00 00 00 48 48 48 48 00 00 00 48 00 48 48 00 00 00 48 00 48 00 00 00 00 48 00 49 48 49 00 48 49 49 49 00 49 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 48 48 00 00 00 00 48 00 48 00 00 00 00 00 48 48 48 00 00 00 48 00 46 00 48 48 00 48 48 00 48 00 49 48 48 49 48 48 48 00 00 00 00 00 48 48 00 00 46 48 48 00 00 48 49 49 00 48 48 00 00 00 48 48 00 00 00 00 00 48 00 48 00 48 48 48 00 00 00 00 48 48 48 00 00 48 00 48 00 00 00 00 48 00 00 00 00 49 48 00 00 48 00 48 00 00 00 00 48 00 00 48 00 46 00 48 49 49 00 49 00 00 48 00 00 00 48 48 48 00 00 48 00 00 49 00 48 48 48 00 48 48 00 00 00 00 48 48 48 48 00 48 48 00 00 48 00 00 00 48 48 48 48 48 00 48 00 00 48 00 49 49 00 48 00 49 00 46 48 48 48 49 48 00 48 00 00 48 00 48 49 49 00 00 00 48 48 00 00 00 00 00 49 00 49 49 48 49 49 00 00 48 00 48 00 48 48 00 00 00 48 00 00 48 48 48 49 48 00 48 48 00 48 00 00 00 00 48 00 00 48 48 00 49 49 48 48 00 00 00 48 48 48 48 48 00 48 48 00 00 00 00 48 48 00 00 00 00 00 46 49 48 48 48 48 00 48 48 48 00 00 48 48 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 48 48 48 48 48 00 48 49 00 48 48 48 48 00 00 00 48 48 00 00 00 00 48 00 00 48 00 48 00 49 48
*/
