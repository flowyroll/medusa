.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1fd1, %r9
nop
add %rsi, %rsi
mov (%r9), %ax
inc %r15
lea addresses_normal_ht+0x18c35, %r11
nop
xor $45873, %r13
movb $0x61, (%r11)
dec %r13
lea addresses_normal_ht+0xc235, %r9
sub $7632, %r15
movb $0x61, (%r9)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x18ef5, %rsi
lea addresses_normal_ht+0x625d, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $70, %rcx
rep movsq
nop
nop
nop
nop
nop
and $63311, %rcx
lea addresses_UC_ht+0x16e3d, %rdi
nop
nop
and %rcx, %rcx
movb (%rdi), %r9b
nop
nop
nop
nop
nop
xor $32341, %rsi
lea addresses_WC_ht+0x13b1d, %r10
nop
nop
nop
nop
nop
inc %rdi
movb $0x61, (%r10)
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1a595, %rsi
lea addresses_A_ht+0x15f5, %rdi
nop
add $35784, %r9
mov $72, %rcx
rep movsb
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x18035, %rsi
lea addresses_A_ht+0x9cf5, %rdi
add %r10, %r10
mov $125, %rcx
rep movsb
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x14125, %r11
cmp $63048, %rsi
movb (%r11), %r10b
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x15035, %rsi
lea addresses_WC_ht+0x10635, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $43, %rcx
rep movsb
nop
nop
nop
add $33861, %rcx
lea addresses_UC_ht+0x10875, %rdi
nop
nop
nop
add $37764, %r15
movb $0x61, (%rdi)
nop
nop
sub $42197, %rsi
lea addresses_A_ht+0xa47, %rcx
nop
cmp %rdi, %rdi
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
inc %rsi
lea addresses_normal_ht+0x11204, %r15
nop
nop
add %r11, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0xdf65, %rcx
clflush (%rcx)
and $49215, %rsi
movb (%rcx), %r13b
cmp $39951, %r9
lea addresses_D_ht+0xce1b, %rsi
nop
add $26865, %r15
mov (%rsi), %ecx
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rcx
push %rdx

// Faulty Load
lea addresses_WC+0x10835, %rcx
nop
add $10075, %r8
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'53': 524, '47': 66, '3c': 63, 'ab': 2, '02': 21, '01': 2836, '48': 2170, '80': 1, '46': 674, 'b0': 8, '90': 7, '79': 42, 'ff': 10768, '00': 3807, '44': 147, 'de': 6, 'e0': 3, '45': 684}
ff 3c ff 44 ff ff 00 00 00 ff ff 53 ff ff ff ff 01 45 ff 48 ff 00 ff ff 00 ff 01 00 00 45 45 ff 53 45 ff ff 00 ff 00 ff 53 ff ff ff ff ff 01 00 44 ff ff 00 ff ff ff 46 ff 01 ff 01 00 ff ff 01 ff 01 47 46 48 00 ff ff ff ff 46 ff ff ff 01 ff 01 48 ff 00 48 ff 48 ff 48 ff 00 ff ff 00 ff ff 01 47 ff 00 45 48 00 ff 48 ff 00 ff 48 00 ff 00 00 ff 00 ff 02 ff ff 00 48 ff 01 48 00 48 48 48 ff 00 00 ff ff b0 ff ff ff 48 ff 48 00 45 ff 00 ff 48 ff 00 00 00 ff ff ff 48 48 ff 46 00 ff 00 ff ff 48 ff 00 48 ff ff 00 00 45 ff ff 44 00 00 48 ff ff 01 ff 00 ff ff ff ff ff ff 00 ff 53 00 00 ff ff 00 ff ff ff 01 00 00 ff ff 00 00 ff ff ff 00 00 00 00 ff ff ff ff ff 48 46 48 46 00 46 ff ff ff ff 00 45 ff 00 00 ff 45 ff 45 00 ff ff 00 ff ff 00 ff 00 00 ff ff 53 ff 48 00 ff ff ff 00 ff ff ff 01 ff 01 ff 79 ff 01 ff 01 ff 01 ff 01 ff 00 ff ff 01 ff 01 ff ff 01 ff 01 48 ff ff 01 ff 01 ff ff 01 00 ff 00 ff 53 00 ff ff ff 00 ff ff 01 ff 01 ff 01 ff 01 ff 01 48 ff 00 ff 00 ff ff 48 ff 01 ff ff ff ff 01 ff 01 00 ff 01 ff 01 ff 01 45 ff 01 ff 00 ff 01 ff 00 ff 01 ff 01 ff 01 ff 01 45 ff 01 ff 48 00 46 3c ff 48 ff ff 48 00 48 ff 48 ff ff 46 ff ff ff 02 ff ff ff 00 48 00 46 ff 00 ff 48 48 00 ff 45 48 ff 00 00 ff 00 48 48 00 00 48 ff ff b0 46 00 ff ff ff 48 48 48 ff 53 ff ff 48 ff 48 48 ff 00 48 ff ff ff 00 ff 00 48 ff ff 46 ff ff ff 44 00 00 ff ff 53 48 00 02 ff 00 ff ff 48 45 ff 00 ff ff ff ff 48 48 ff 00 ff 48 ff 00 ff ff 01 ff 01 ff 01 ff 00 ff 45 ff 01 ff 79 46 ff 00 ff 00 ff ff 53 ff ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 00 ff 01 ff 53 ff ff 01 ff 01 ff 01 ff 01 ff 01 00 48 ff ff 00 ff ff ff 01 00 ff 00 ff ff ff 01 ff 01 ff 00 00 ff ff 01 ff 01 ff 01 ff 01 ff 01 ff ff 01 ff 01 48 ff 01 00 45 ff ff 48 00 48 ff ff 00 00 ff 53 3c ff 48 ff 48 ff ff 48 ff ff 00 ff ff ff 01 ff 00 ff ff 01 48 00 ff ff ff 46 ff ff 44 ff 01 ff 01 ff 01 ff ff 01 ff ff 01 ff 01 48 00 00 48 46 ff 00 48 ff ff ff ff ff 00 ff 00 ff 00 48 48 ff ff ff 3c 53 00 ff ff 48 3c ff 48 ff 00 ff 53 ff ff ff ff 01 ff de 46 ff 46 ff 01 00 46 46 ff 00 ff ff ff ff 01 ff 01 45 ff ff 01 ff 01 ff 01 00 ff ff 01 ff 53 ff 00 00 ff ff 00 45 45 ff ff 00 ff ff 45 ff ff 01 44 ff ab ff 01 ff 01 ff 01 ff 00 ff 01 ff 01 ff 01 ff 00 48 ff 45 ff ff 00 ff 01 46 ff ff 01 ff 01 ff 00 ff 00 ff 48 ff 01 00 ff 53 ff 45 ff 01 00 ff ff 01 00 ff 00 ff 53 ff ff 01 46 00 45 00 ff ff ff ff 01 45 ff ff 01 ff 01 ff 01 ff 01 ff 01 00 ff 01 00 ff ff 01 00 45 ff ff ff 01 ff 01 ff 01 45 46 ff 53 ff ff 00 48 ff ff ff 01 46 ff ff 01 46 ff ff 01 ff ff 01 ff 01 ff 01 ff 01 ff 01 45 ff 53 00 ff ff ff ff 48 ff 45 46 ff ff 46 ff ff 01 ff 01 ff 01 ff 01 ff ff 00 45 48 00 45 00 ff 02 ff ff 46 ff ff ff 01 00 ff ff 01 45 ff 53 ff 02 ff 48 3c 45 00 00 ff ff ff 00 00 ff 46 ff 53 ff ff 01 ff 48 ff 00 ff 00 ff ff ff 00 ff 01 ff 01 ff ff 01 ff 46 00 47 00 ff 00 ff 00 00 ff 00 48 ff ff 48 ff 53 ff ff 01 00 ff 53 ff 53 ff 00 ff ff ff ff ff ff ff 48 ff 45 48 45 48 00 ff ff 48 ff 00 ff ff 53 ff 48 ff ff ff 01 ff 3c ff 01 ff 01 ff 01 48 45 48 ff 00 00 48 ff ff 45 53 ff ff
*/
