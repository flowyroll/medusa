.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x112bc, %rbp
and %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
cmp $4792, %r10
lea addresses_UC_ht+0x1dbfc, %rsi
lea addresses_WC_ht+0xa0bc, %rdi
nop
nop
and %rbp, %rbp
mov $114, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x8afc, %rdi
nop
nop
nop
and $34774, %r9
movl $0x61626364, (%rdi)
nop
nop
cmp $23487, %r11
lea addresses_D_ht+0x2abc, %rcx
xor %r11, %r11
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdx

// Load
lea addresses_PSE+0x1fd9b, %r9
dec %rcx
movb (%r9), %r11b
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_WT+0x19b2, %r11
nop
nop
inc %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
and %rcx, %rcx

// Store
lea addresses_D+0xcabc, %r11
nop
and $3643, %r10
movb $0x51, (%r11)
nop
dec %rcx

// Load
lea addresses_WT+0x18edc, %rbx
nop
nop
nop
and $16812, %rcx
mov (%rbx), %r9
sub %r9, %r9

// Store
lea addresses_normal+0x83bc, %r15
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movaps %xmm4, (%r15)
nop
nop
nop
nop
and $19241, %r9

// Store
mov $0x79ac590000000e56, %r15
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x5152, (%r15)
nop
nop
nop
nop
xor %rbx, %rbx

// Load
mov $0x7937280000000e7c, %rcx
nop
nop
nop
nop
and $57750, %rbx
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %r9
xor $27992, %r11

// Load
lea addresses_PSE+0x130bc, %rdx
nop
nop
nop
nop
xor $21647, %rbx
mov (%rdx), %r9w
add %rbx, %rbx

// Faulty Load
lea addresses_UC+0xd6bc, %rbx
nop
nop
nop
add $14298, %r15
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 6}
00 00 00 00 00 00
*/
