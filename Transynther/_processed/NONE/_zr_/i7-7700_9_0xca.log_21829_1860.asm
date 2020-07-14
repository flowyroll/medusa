.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1c9ac, %rax
clflush (%rax)
nop
nop
nop
nop
xor $9512, %r11
mov $0x6162636465666768, %rdx
movq %rdx, (%rax)
cmp $31495, %r8
lea addresses_D_ht+0xbac, %r13
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0xcfdc, %r13
nop
nop
nop
cmp $62600, %rbp
movb $0x61, (%r13)
nop
nop
nop
nop
nop
cmp $20471, %r8
lea addresses_D_ht+0xab2c, %rsi
lea addresses_WT_ht+0x3c10, %rdi
nop
and %r8, %r8
mov $9, %rcx
rep movsw
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x135ac, %rax
clflush (%rax)
nop
nop
and $42173, %rcx
movb $0x61, (%rax)
nop
sub $36186, %rbp
lea addresses_A_ht+0xb1ac, %rax
inc %rdx
movw $0x6162, (%rax)
nop
cmp $22977, %rcx
lea addresses_D_ht+0x13ac, %r8
nop
cmp $24514, %rax
mov (%r8), %rbp
sub %rax, %rax
lea addresses_normal_ht+0xdfac, %r13
nop
nop
nop
nop
nop
and $32816, %rax
mov (%r13), %bp
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x16c6c, %rsi
nop
nop
nop
nop
nop
cmp $56823, %rdx
movl $0x61626364, (%rsi)
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x1d8ac, %rsi
lea addresses_WC_ht+0xbf2c, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $85, %rcx
rep movsb
nop
inc %rdx
lea addresses_normal_ht+0x1bfac, %rax
add $47386, %rdi
mov (%rax), %cx
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0xf20c, %rdi
nop
nop
nop
nop
nop
lfence
movb (%rdi), %al
nop
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0x1d5ac, %r8
nop
nop
add $62802, %r11
mov (%r8), %di
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x10b34, %r8
nop
nop
nop
nop
sub %rax, %rax
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
nop
xor $33860, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WT+0x6fac, %rdi
nop
nop
nop
dec %r10
movl $0x51525354, (%rdi)
nop
dec %rdi

// Store
lea addresses_D+0x10fac, %r13
nop
nop
nop
nop
xor $57969, %r8
movl $0x51525354, (%r13)
nop
nop
inc %rdi

// Store
lea addresses_WC+0x1c508, %r8
nop
nop
nop
nop
nop
sub $62653, %r13
movl $0x51525354, (%r8)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_A+0x156d, %rdi
nop
nop
cmp %r10, %r10
movb $0x51, (%rdi)
nop
nop
nop
nop
xor $16008, %rsi

// Faulty Load
lea addresses_WT+0x6fac, %r9
nop
nop
add $22930, %rsi
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
