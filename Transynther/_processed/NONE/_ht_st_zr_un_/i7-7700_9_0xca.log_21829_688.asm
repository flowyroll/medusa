.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xcdae, %rsi
lea addresses_WC_ht+0x5dae, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor %r15, %r15
mov $71, %rcx
rep movsq
nop
and %rbx, %rbx
lea addresses_WC_ht+0x199ae, %rbx
nop
xor %rcx, %rcx
movw $0x6162, (%rbx)
nop
nop
nop
nop
xor $14071, %rcx
lea addresses_D_ht+0x12dae, %rsi
lea addresses_UC_ht+0xfb2e, %rdi
clflush (%rdi)
add %r8, %r8
mov $73, %rcx
rep movsw
sub $9836, %rcx
lea addresses_WC_ht+0x5dae, %rcx
nop
nop
and %r15, %r15
movw $0x6162, (%rcx)
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x91ae, %rcx
nop
inc %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x14fee, %r15
and %r11, %r11
movl $0x61626364, (%r15)
nop
nop
nop
and $41169, %r8
lea addresses_WT_ht+0x1d97e, %r15
nop
nop
nop
cmp %rcx, %rcx
movb (%r15), %r11b
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x26ae, %rsi
lea addresses_UC_ht+0x180a6, %rdi
nop
nop
nop
cmp %rax, %rax
mov $35, %rcx
rep movsw
nop
nop
nop
cmp $5335, %rbx
lea addresses_D_ht+0x25ae, %r8
nop
nop
sub %rsi, %rsi
mov (%r8), %r15
nop
nop
nop
nop
sub $62732, %rbx
lea addresses_WC_ht+0x8cae, %r8
nop
nop
mfence
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x7cfe, %rsi
nop
dec %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
and $3994, %rax
lea addresses_D_ht+0x1c9b2, %rcx
nop
nop
and %rbx, %rbx
movb $0x61, (%rcx)
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x23ae, %rdi
clflush (%rdi)
nop
cmp $54024, %rsi
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r11
add %r15, %r15
lea addresses_WC_ht+0xa37e, %rsi
lea addresses_WC_ht+0x99c9, %rdi
clflush (%rsi)
cmp %r8, %r8
mov $59, %rcx
rep movsl
nop
and $39484, %r15
lea addresses_A_ht+0x152ee, %rbx
nop
nop
nop
nop
nop
sub $47678, %r11
movl $0x61626364, (%rbx)
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x3ae, %rsi
nop
nop
add $1836, %rax
movw $0x5152, (%rsi)
dec %rax

// Load
lea addresses_PSE+0x152e6, %rsi
nop
nop
nop
nop
and $27741, %r8
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
nop
sub $33029, %rbp

// Store
lea addresses_PSE+0x662e, %rbp
nop
xor $6025, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
nop
and $852, %rax

// Load
lea addresses_WC+0x141ae, %r9
sub %rax, %rax
mov (%r9), %r8d
nop
nop
cmp %rsi, %rsi

// Store
mov $0xc1e, %rsi
clflush (%rsi)
nop
nop
nop
xor %r9, %r9
movb $0x51, (%rsi)
nop
nop
nop
cmp $16254, %r8

// Faulty Load
lea addresses_WC+0x13dae, %r9
nop
nop
nop
cmp $40021, %rax
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_PSE'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': True, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'46': 222, '44': 4, '48': 127, '47': 16, '00': 11246, '4c': 1, '49': 5, '80': 115, '33': 10079, '02': 11, '3c': 2, 'e0': 1}
00 33 00 00 33 00 33 00 33 00 33 33 00 00 33 00 00 00 00 00 33 33 00 00 33 33 00 33 00 00 00 33 00 33 00 00 33 33 00 00 00 33 00 00 33 33 00 33 00 33 00 00 33 33 00 33 00 33 33 00 33 00 33 33 33 00 00 00 00 00 33 33 00 33 00 33 00 00 00 00 33 33 00 00 46 33 33 00 00 33 33 00 00 00 33 00 00 00 33 33 00 00 00 33 00 00 46 00 33 33 00 33 00 33 00 33 00 33 33 33 00 33 00 33 00 00 33 33 00 00 33 00 00 33 33 00 33 00 00 00 33 00 33 00 33 00 33 00 00 33 00 33 00 33 00 33 00 33 33 00 33 33 33 00 33 00 33 00 00 33 00 00 33 00 00 33 33 00 00 33 00 33 00 33 00 33 00 33 00 00 00 00 33 00 00 33 33 00 00 33 00 00 33 00 00 00 48 33 00 33 00 00 00 33 33 00 33 00 33 00 33 33 00 33 00 33 00 33 00 33 00 33 00 33 00 00 33 33 00 00 33 33 00 33 00 00 33 00 33 33 00 00 00 33 33 00 33 00 33 00 33 00 00 00 33 00 33 00 33 33 00 33 00 33 00 33 00 33 00 33 00 00 00 33 00 33 00 00 33 33 00 00 33 00 00 00 00 00 00 00 33 00 33 00 00 33 00 33 33 00 33 33 00 33 00 33 00 33 00 33 00 33 00 00 00 33 00 33 00 33 00 00 33 00 00 46 00 33 00 33 00 33 00 00 33 33 00 33 00 33 00 33 33 33 00 33 00 00 33 00 33 00 33 00 33 00 33 00 33 00 00 33 00 33 33 00 33 00 33 00 33 00 00 33 00 33 00 33 00 33 00 33 00 00 33 33 00 33 00 33 00 33 00 33 33 00 00 33 00 33 46 33 00 33 00 33 00 33 00 00 00 00 33 33 00 33 00 33 33 00 00 33 33 00 33 33 33 00 33 00 33 33 00 33 33 33 00 00 33 33 00 33 00 33 33 00 33 00 48 33 00 00 00 33 00 46 00 33 00 00 33 33 00 33 00 33 80 33 33 33 00 33 00 33 00 33 00 33 00 33 33 00 00 33 00 33 33 00 33 00 33 00 33 00 33 00 33 00 00 00 00 33 00 33 00 00 33 00 00 33 00 33 00 33 00 33 00 33 33 00 00 33 00 00 33 33 00 33 00 33 00 33 33 00 33 00 00 00 00 33 33 00 33 00 33 00 00 33 00 33 00 33 00 00 00 33 33 00 33 00 33 00 33 00 33 48 00 00 33 33 33 33 33 00 00 00 33 33 00 80 00 00 33 00 33 00 33 00 33 00 33 00 33 33 00 33 00 33 00 33 33 46 00 33 00 33 33 00 00 33 00 33 00 33 00 33 00 33 00 33 33 46 33 00 33 00 33 00 33 00 33 00 33 00 00 00 00 00 33 00 33 00 00 33 33 00 33 00 46 33 33 00 33 00 00 33 00 48 33 00 33 00 33 00 33 00 00 33 00 33 00 33 00 33 00 33 00 33 33 00 33 33 00 00 33 33 00 00 33 00 33 33 00 33 00 00 33 00 00 00 00 00 33 00 46 33 00 33 00 00 33 00 33 33 48 33 00 00 33 33 00 33 00 33 00 00 33 33 00 33 00 00 33 00 33 00 33 00 00 33 00 33 00 33 33 00 00 33 80 33 00 00 00 00 00 00 00 33 00 33 00 33 00 00 00 33 00 33 00 00 33 33 00 33 00 33 00 33 00 80 33 00 33 00 33 00 00 00 00 00 33 00 33 00 33 00 33 00 33 00 33 00 00 33 33 00 33 33 00 00 33 00 00 33 00 33 00 33 00 33 00 33 33 00 33 00 33 00 33 00 33 00 00 00 00 33 33 46 00 33 00 33 33 00 33 00 33 00 00 33 00 33 00 33 00 33 00 00 33 00 33 33 00 33 33 00 00 00 33 00 33 00 33 00 33 00 33 33 00 33 00 33 00 33 00 33 00 33 00 33 00 00 00 33 00 33 00 33 00 00 33 00 00 33 00 33 00 33 00 00 33 00 33 00 00 33 33 00 33 00 00 33 33 00 00 00 33 33 33 00 33 00 00 33 00 33 00 33 00 33 00 00 33 00 00 33 00 00 33 00 33 33 00 33 00 00 00 33 00 33 00 00 33 00 33 33 00 33 33 00 33 00 33 33 33 00 00 00 33 33 00 33 00 33 00 33 00 33 00 33
*/
